import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'timetable_dialog_model.dart';

class TimetableDialog extends StackedView<TimetableDialogModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const TimetableDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    TimetableDialogModel viewModel,
    Widget? child,
  ) {
    return Dialog(
      insetAnimationDuration: const Duration(milliseconds: 500),
      insetAnimationCurve: Curves.bounceOut,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Text(
                'Timetable TE Comps',
                style: tabletitlestyle,
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Table(
                  border: TableBorder
                      .all(), // Allows to add a border decoration around your table
                  children: [
                    TableRow(children: [
                      Text(
                        'Day/Time',
                        style: tableheaderstyle,
                      ),
                      Text(
                        '9:15-10:15,',
                        style: tableheaderstyle,
                      ),
                      Text(
                        '10:15-11:15',
                        style: tableheaderstyle,
                      ),
                      Text(
                        '12:15-12:15',
                        style: tableheaderstyle,
                      ),
                    ]),
                    TableRow(children: [
                      Text(
                        'Monday',
                        style: tableheaderstyle,
                      ),
                      const Text(
                        'AI,',
                      ),
                      const Text(
                        'QA',
                      ),
                      const Text(
                        'IOT',
                      ),
                    ]),
                    TableRow(children: [
                      Text(
                        'Tuesday',
                        style: tableheaderstyle,
                      ),
                      const Text(
                        'CSS,',
                      ),
                      const Text(
                        'QA',
                      ),
                      const Text(
                        'NLP',
                      ),
                    ]),
                    TableRow(children: [
                      Text(
                        'Wednesday',
                        style: tableheaderstyle,
                      ),
                      const Text(
                        'AI,',
                      ),
                      const Text(
                        'QA',
                      ),
                      const Text(
                        'IOT',
                      ),
                    ]),
                    TableRow(children: [
                      Text(
                        'Thursday',
                        style: tableheaderstyle,
                      ),
                      const Text(
                        'CSS,',
                      ),
                      const Text(
                        'QA',
                      ),
                      const Text(
                        'NLP',
                      ),
                    ]),
                    TableRow(children: [
                      Text(
                        'Friday',
                        style: tableheaderstyle,
                      ),
                      const Text(
                        'AI,',
                      ),
                      const Text(
                        'QA',
                      ),
                      const Text(
                        'IOT',
                      ),
                    ]),
                  ]),
            ),
            ElevatedButton(
              onPressed: () => viewModel.pop(),
              child: const Text(
                'Close',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)),
            )
          ],
        ),
      ),
    );
  }

  @override
  TimetableDialogModel viewModelBuilder(BuildContext context) =>
      TimetableDialogModel();
}

TextStyle tabletitlestyle = const TextStyle(
    fontSize: 20, fontWeight: FontWeight.w300, color: Colors.white);
TextStyle tableheaderstyle = const TextStyle(
    fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black);
