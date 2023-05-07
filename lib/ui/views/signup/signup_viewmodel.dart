import 'package:app/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';

class SignupViewModel extends BaseViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  TextEditingController passwordTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();
  TextEditingController userNameTextController = TextEditingController();

  void navigateToHomeview() {
    _navigationService.navigateToHomeView();
  }

  void navigatetoSignin() {
    _navigationService.navigateToSigninView();
  }
}
