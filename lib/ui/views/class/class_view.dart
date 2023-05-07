// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';

import 'class_viewmodel.dart';

class ClassView extends StackedView<ClassViewModel> {
  const ClassView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ClassViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.black,
        Colors.blue,
      ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Class ',
            style: TextStyle(
                fontSize: 24,
                fontFamily: 'Montserrat',
                color: Colors.white,
                fontWeight: FontWeight.w500),
          ),
        ),
        const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'TE Computer Engineering',
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            )),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Semester: 6',
            style: TextStyle(
                fontSize: 14,
                fontFamily: 'Montserrat',
                color: Colors.white,
                fontWeight: FontWeight.w400),
          ),
        ),
        const Divider(
          color: Colors.white,
        ),
        SizedBox(
          height: 250,
          width: double.infinity,
          child: Lottie.asset("assets/images/classroom.json",
              height: 100, width: 300, fit: BoxFit.cover),
        ),
        const Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Features',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Montserrat')),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          height: 250,
          width: double.infinity,
          child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [
                GestureDetector(
                    child: Column(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          padding: const EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      "https://th.bing.com/th/id/OIP.jS_GT0DMY3YAqlMnPWX7WAAAAA?pid=ImgDet&rs=1")),
                              color: Colors.white70.withOpacity(1),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        const Text('Attendance',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Montserrat')),
                      ],
                    ),
                    onTap: () => viewModel.showattendance()),
                GestureDetector(
                    child: Column(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          padding: const EdgeInsets.all(4.0),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      "https://th.bing.com/th/id/R.cc61992f0db30374f2cf5dcf8b22ceed?rik=5eHH8dcLd7Sm1w&riu=http%3a%2f%2fcdn.onlinewebfonts.com%2fsvg%2fimg_200256.png&ehk=JOyPH3VweU38FTsPJ1hhhYlCr3CTAcxUxOSeF1PfJow%3d&risl=&pid=ImgRaw&r=0")),
                              color: Colors.white70,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        const Text('Time Table',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Montserrat')),
                      ],
                    ),
                    onTap: () => viewModel.showtimetable()),
                GestureDetector(
                    child: Column(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          padding: const EdgeInsets.all(4.0),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      "https://th.bing.com/th/id/OIP.hfytPvCb5_McGttc53gcOAHaHa?w=192&h=192&c=7&r=0&o=5&dpr=1.3&pid=1.7")),
                              color: Colors.white70,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        const Text('Library',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Montserrat')),
                      ],
                    ),
                    onTap: () => viewModel.launchlink(
                        "https://bvcoenm.edu.in/wp-content/uploads/2017/01/eresources.pdf")),
                GestureDetector(
                    child: Column(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          padding: const EdgeInsets.all(4.0),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      "https://static.vecteezy.com/system/resources/previews/000/498/536/original/vector-notes-icon-design.jpg")),
                              color: Colors.white70,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        const Text('Class Notes',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Montserrat')),
                      ],
                    ),
                    onTap: () => viewModel.launchlink(
                        "https://drive.google.com/drive/folders/1N4oXkjVnBlqmOMFtAPiBI7ei8Qg5r0lM")),
                GestureDetector(
                    child: Column(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          padding: const EdgeInsets.all(4.0),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://th.bing.com/th/id/OIP.i3oY6l_uqQSeJq6v659fVgHaHy?pid=ImgDet&rs=1")),
                              color: Colors.white70,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        const Text('Marks',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Montserrat')),
                      ],
                    ),
                    onTap: () => viewModel.launchlink(
                        "https://drive.google.com/drive/folders/1-0QM1eDeoz-fnnHAqnGDWFyvcUv2kXuZ")),
                GestureDetector(
                    child: Column(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          padding: const EdgeInsets.all(4.0),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://th.bing.com/th/id/OIP.0vRI3_Ja26A2tXA2Rr5uywHaHa?w=211&h=211&c=7&r=0&o=5&dpr=1.3&pid=1.7")),
                              color: Colors.white70,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        const Text('Imp Links',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Montserrat')),
                      ],
                    ),
                    onTap: () => viewModel.launchlink(
                        "https://bvcoenm.edu.in/department/computer-engineering/student-section/")),
              ]),
        ),
        const Divider(
          color: Colors.white,
        )
      ]),
    )));
  }

  @override
  ClassViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ClassViewModel();
}
