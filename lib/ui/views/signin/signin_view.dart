import 'package:app/ui/common/reusablewidgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'signin_viewmodel.dart';

class SigninView extends StackedView<SigninViewModel> {
  const SigninView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SigninViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 124, 167, 240),
              Colors.lightBlue,
              Colors.blueAccent,
              Colors.blue
            ],
          ),
        ),
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.height * 0.2, 20, 0),
          child: Column(children: [
            reusableTextField("Enter UserName", Icons.person_outline, false,
                viewModel.emailTextController),
            const SizedBox(
              height: 20,
            ),
            reusableTextField("Enter Password", Icons.lock_outline, true,
                viewModel.passwordTextController),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 35,
              alignment: Alignment.bottomRight,
              child: TextButton(
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.white70),
                  textAlign: TextAlign.right,
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            firebaseUIButton(context, "Sign In", () {
              FirebaseAuth.instance
                  .signInWithEmailAndPassword(
                      email: viewModel.emailTextController.text,
                      password: viewModel.passwordTextController.text)
                  .then((value) {
                debugPrint("Signed in as" + viewModel.emailTextController.text);
                viewModel.navigateToHome();
              });
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?",
                    style: TextStyle(color: Colors.white70)),
                GestureDetector(
                  onTap: () {
                    viewModel.navigateToSignup();
                  },
                  child: const Text(
                    " Sign Up",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ]),
        )),
      ),
    );
  }

  @override
  SigninViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SigninViewModel();
}
