import 'package:app/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class SigninViewModel extends BaseViewModel {
  NavigationService _navigationService = locator<NavigationService>();

  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();

  void navigateToSignup() {
    _navigationService.replaceWithSignupView();
  }

  void navigateToHome() {
    _navigationService.replaceWithHomeView();
  }
}
