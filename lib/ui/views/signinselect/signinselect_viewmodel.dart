import 'package:app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class SigninselectViewModel extends BaseViewModel {
  NavigationService _navigationService = locator<NavigationService>();

  void navigatetoSignIn() {
    _navigationService.replaceWithSigninView();
  }
}
