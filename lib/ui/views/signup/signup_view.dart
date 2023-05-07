import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/reusablewidgets.dart';
import 'signup_viewmodel.dart';

class SignupView extends StackedView<SignupViewModel> {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SignupViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Sign Up",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
          ),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 124, 167, 240),
              Colors.lightBlue,
              Colors.blueAccent,
              Colors.blue
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
                    child: Column(children: <Widget>[
                      const SizedBox(
                        height: 20,
                      ),
                      reusableTextField("Enter UserName", Icons.person_outline,
                          false, viewModel.userNameTextController),
                      const SizedBox(
                        height: 20,
                      ),
                      reusableTextField("Enter Email Id", Icons.person_outline,
                          false, viewModel.emailTextController),
                      const SizedBox(
                        height: 20,
                      ),
                      reusableTextField("Enter Password", Icons.lock_outlined,
                          true, viewModel.passwordTextController),
                      const SizedBox(
                        height: 20,
                      ),
                      firebaseUIButton(context, "Sign Up", () {
                        FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: viewModel.emailTextController.text,
                                password: viewModel.passwordTextController.text)
                            .then((value) {
                          debugPrint("Created New Account");
                          viewModel.navigateToHomeview();
                        }).onError((error, stackTrace) {
                          debugPrint("Error is" + error.toString());
                        });
                      }),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an account?",
                              style: TextStyle(color: Colors.white70)),
                          GestureDetector(
                            onTap: () {
                              viewModel.navigatetoSignin();
                            },
                            child: const Text(
                              " Sign IN",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      )
                    ])))));
  }

  @override
  SignupViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SignupViewModel();
}
