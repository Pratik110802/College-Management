import 'package:app/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';

import 'profile_viewmodel.dart';

class ProfileView extends StackedView<ProfileViewModel> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ProfileViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          //Layer1
          Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    gradient: LinearGradient(colors: [
                      Colors.blue,
                      Colors.black,
                    ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
                child: Row(children: [
                  const Spacer(
                    flex: 1,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        'Pratik Patil',
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Montserrat'),
                      ),
                      verticalSpaceTiny,
                      Text(
                        'TE Computer',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Montserrat'),
                      ),
                      verticalSpaceTiny
                    ],
                  ),
                  horizontalSpaceLarge
                ]),
              ),
            ],
          ),

          //Layer2
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            verticalSpaceLarge,
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://media.istockphoto.com/id/597958694/photo/young-adult-male-student-in-the-lobby-of-a-university.jpg?s=612x612&w=is&k=20&c=oEno27pL3QqlA_V8ObfLPcUqVtC-pZZvCXdlaMWBu_o=")),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            verticalSpaceTiny,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(children: [
                  Row(
                    children: const [
                      horizontalSpaceMedium,
                      Text(
                        'Email',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Montserrat'),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      horizontalSpaceMedium,
                      Text(
                        'pratikpatil0951@gmail.com',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Montserrat'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ]),
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: const [
                  horizontalSpaceMedium,
                  Text(
                    'Record',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Montserrat'),
                  ),
                ],
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Spacer(),
                  Text(
                    'Attendance : 80%',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Montserrat'),
                  ),
                  Spacer(),
                  Text(
                    'Backlogs : 0',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Montserrat'),
                  ),
                  Spacer(),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Spacer(),
                  Text(
                    'Average CGPA: 9.67',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Montserrat'),
                  ),
                  Spacer(),
                  Text(
                    'Rank : 1',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Montserrat'),
                  ),
                  Spacer(),
                ],
              ),
            ]),
            verticalSpaceLarge,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(children: [
                  Row(
                    children: const [
                      horizontalSpaceMedium,
                      Text(
                        'Social Links',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Montserrat'),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      horizontalSpaceMedium,
                      GestureDetector(
                        child: Lottie.asset("assets/images/instagram.json",
                            height: 50, width: 50, fit: BoxFit.cover),
                      ),
                      horizontalSpaceMedium,
                      GestureDetector(
                        child: Lottie.asset("assets/images/facebook.json",
                            height: 60, width: 60, fit: BoxFit.cover),
                      ),
                      horizontalSpaceMedium,
                      GestureDetector(
                        child: Lottie.asset("assets/images/whatsapp.json",
                            height: 70, width: 60, fit: BoxFit.cover),
                      ),
                      horizontalSpaceMedium,
                      GestureDetector(
                        child: Lottie.asset("assets/images/share.json",
                            height: 50, width: 50, fit: BoxFit.cover),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ]),
              ),
            ),
          ]),
        ]),
      ),
    );
  }

  @override
  ProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProfileViewModel();
}
