import 'package:app/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class TimetableDialogModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void pop() {
    _navigationService.popRepeated(1);
  }
}
