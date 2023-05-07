import 'package:app/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';
import 'wifiscan_viewmodel.dart';

class WifiscanView extends StackedView<WifiscanViewModel> {
  const WifiscanView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    WifiscanViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black,
                Colors.blue,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Attendance Scan',
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const Divider(
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Text(
                      'Subject:',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    horizontalSpaceSmall,
                    Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 183, 199, 207),
                      ),
                      child: DropdownButton(
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Montserrat'),
                        value: viewModel.selectedsubject,
                        items: viewModel.subjects.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(color: Colors.grey[800]),
                            ),
                          );
                        }).toList(),
                        onChanged: (value) =>
                            viewModel.updateSelectedSubject(value as String?),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Center(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Lottie.asset("assets/images/scan.json",
                      height: 100, width: 300, fit: BoxFit.cover),
                ),
              ),
              GestureDetector(
                onTap: () async => viewModel.isstudentpresent(context),
                child: Center(
                  child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                      ),
                      margin: const EdgeInsets.all(10),
                      child: const Text('Scan',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontWeight: FontWeight.w400))),
                ),
              ),
              const Divider(
                color: Colors.white,
              ),
              Flexible(
                child: Center(
                    child: viewModel.accessPoints.isEmpty
                        ? const Text(
                            "Attendance of Students present will appear here",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                color: Colors.white),
                            textAlign: TextAlign.center)
                        : viewModel.studentpresent.isEmpty
                            ? const Text(
                                "NO Student present",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Montserrat',
                                    color: Colors.white),
                              )
                            : Column(
                                children: [
                                  const Text(
                                    "Student present",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat',
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                      width: double.infinity,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.3,
                                      child: ListView.builder(
                                        itemCount:
                                            viewModel.studentpresent.length,
                                        itemBuilder: (context, i) => ListTile(
                                          shape: BeveledRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          leading: const Icon(
                                            Icons.check_circle,
                                            color: Colors.green,
                                          ),
                                          title: Text(
                                            viewModel.studentpresent
                                                .elementAt(i),
                                            style: const TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'Montserrat',
                                                color: Colors.white),
                                          ),
                                        ),
                                      )),
                                ],
                              )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  WifiscanViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      WifiscanViewModel();
}
