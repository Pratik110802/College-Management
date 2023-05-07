// ignore_for_file: unnecessary_import, unused_import

import 'dart:ui';

import 'package:app/app/app.dart';
import 'package:app/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:table_calendar/table_calendar.dart';

import 'events_viewmodel.dart';

class EventsView extends StackedView<EventsViewModel> {
  const EventsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    EventsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Container(
            height: 800,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.black,
              Colors.blue,
              Colors.black,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text(
                          'Events',
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        Lottie.asset("assets/images/calendar.json",
                            height: 50, width: 50, fit: BoxFit.cover),
                        horizontalSpaceMedium
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 4.0, left: 8, top: 4),
                    child: Text(
                      'Calendar',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: SfCalendar(
                        view: CalendarView.month,
                        firstDayOfWeek: 7,
                        headerDateFormat: 'yMMMd',
                        headerHeight: 50,
                        headerStyle: const CalendarHeaderStyle(
                            backgroundColor: Colors.black38,
                            textAlign: TextAlign.center,
                            textStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.white,
                                fontSize: 24)),
                        viewHeaderHeight: -1,
                        todayHighlightColor: Colors.black26,
                        controller: viewModel.controller,
                        timeZone: 'Indian ocean',
                        showCurrentTimeIndicator: true,
                        showDatePickerButton: true,
                        showNavigationArrow: true,
                        blackoutDatesTextStyle: const TextStyle(
                          color: Colors.blue,
                        ),
                        blackoutDates: [
                          DateTime(2023, 5, 1),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 4.0, left: 8, top: 4),
                    child: Text(
                      'Upcoming Events',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 12),
                    child: SizedBox(
                      height: 250,
                      width: double.infinity,
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: viewModel.events.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    viewModel.events[index]['date']!
                                        .substring(8, 10),
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Montserrat',
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              title: Text(
                                viewModel.events[index]['title']!,
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                              subtitle: Text(
                                viewModel.events[index]['date']!
                                        .substring(0, 10) +
                                    ' ' +
                                    viewModel.events[index]['time']!,
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300),
                              ),
                            );
                          }),
                    ),
                  ),
                ])),
      ),
    );
  }

  @override
  EventsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      EventsViewModel();
}
