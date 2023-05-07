import 'package:app/ui/views/class/class_view.dart';
import 'package:app/ui/views/events/events_view.dart';
import 'package:app/ui/views/home/home_view.dart';
import 'package:app/ui/views/profile/profile_view.dart';
import 'package:app/ui/views/wifiscan/wifiscan_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'mainscreen_viewmodel.dart';

class MainscreenView extends StackedView<MainscreenViewModel> {
  const MainscreenView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MainscreenViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: getviewForIndex(viewModel.currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.blue,
          backgroundColor: Colors.black87,
          unselectedItemColor: Colors.white,
          onTap: viewModel.setIndex,
          currentIndex: viewModel.currentIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.class_outlined),
              label: 'Class',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: 'Attendance',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_sharp),
              label: 'Events',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ));
  }

  @override
  MainscreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MainscreenViewModel();

  getviewForIndex(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return const HomeView();

      case 1:
        return const ClassView();

      case 2:
        return const WifiscanView();

      case 3:
        return const EventsView();
      case 4:
        return const ProfileView();
      default:
        return const HomeView();
    }
  }
}
