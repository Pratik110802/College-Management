// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedDialogGenerator
// **************************************************************************

import 'package:stacked_services/stacked_services.dart';

import 'app.locator.dart';
import '../ui/dialogs/attendance/attendance_dialog.dart';
import '../ui/dialogs/info_alert/info_alert_dialog.dart';
import '../ui/dialogs/timetable/timetable_dialog.dart';

enum DialogType {
  infoAlert,
  timetable,
  attendance,
}

void setupDialogUi() {
  final dialogService = locator<DialogService>();

  final Map<DialogType, DialogBuilder> builders = {
    DialogType.infoAlert: (context, request, completer) =>
        InfoAlertDialog(request: request, completer: completer),
    DialogType.timetable: (context, request, completer) =>
        TimetableDialog(request: request, completer: completer),
    DialogType.attendance: (context, request, completer) =>
        AttendanceDialog(request: request, completer: completer),
  };

  dialogService.registerCustomDialogBuilders(builders);
}
