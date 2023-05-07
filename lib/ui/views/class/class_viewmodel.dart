// ignore_for_file: unused_import

import 'package:app/app/app.dialogs.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../app/app.locator.dart';
import 'package:flutter/material.dart';

class ClassViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();

  void showtimetable() {
    _dialogService.showCustomDialog(
      variant: DialogType.timetable,
    );
  }

  Future<void> launchlink(String url) async {
    Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  void showattendance() {
    _dialogService.showCustomDialog(variant: DialogType.attendance);
  }
}
