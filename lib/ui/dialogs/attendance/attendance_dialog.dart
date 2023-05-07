import 'package:flutter/material.dart';
import 'package:app/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'attendance_dialog_model.dart';

class AttendanceDialog extends StackedView<AttendanceDialogModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const AttendanceDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AttendanceDialogModel viewModel,
    Widget? child,
  ) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Center(
                child: Text(
              'Attendance',
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600),
            )),
            verticalSpaceMedium,
            const Text(
              'Your Attendance is 85%',
              style: TextStyle(fontSize: 18, fontFamily: 'Montserrat'),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: LinearProgressIndicator(
                value: 0.8,
                minHeight: 10,
                color: Colors.green,
              ),
            ),
            GestureDetector(
              onTap: () => completer(DialogResponse(confirmed: true)),
              child: Container(
                height: 40,
                width: double.infinity,
                alignment: Alignment.center,
                child: const Text(
                  'Got it',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  AttendanceDialogModel viewModelBuilder(BuildContext context) =>
      AttendanceDialogModel();
}
