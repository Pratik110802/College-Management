import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'signinselect_viewmodel.dart';

class SigninselectView extends StackedView<SigninselectViewModel> {
  const SigninselectView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SigninselectViewModel viewModel,
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
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: ElevatedButton(
                        onPressed: () => viewModel.navigatetoSignIn(),
                        child: const Text('Signin')),
                  )
                ]),
          ),
        ),
      ),
    );
  }

  @override
  SigninselectViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SigninselectViewModel();
}
