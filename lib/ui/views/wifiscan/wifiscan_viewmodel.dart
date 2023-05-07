import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:wifi_scan/wifi_scan.dart';

class WifiscanViewModel extends BaseViewModel {
  List<WiFiAccessPoint> accessPoints = <WiFiAccessPoint>[];
  Map<String, String> studentslist = {
    "theskyspace": "Akash Joshi",
    "Vipul": "Vipul Mane",
    "RS": "Sachin Rathod",
    "Galaxy M51A216": "Prathamesh Shirole",
    "VOID": "Devang Sawant"
  };
  List<String> scannedwifis = [];
  Set<String> studentpresent = {};

  bool shouldCheckCan = true;

  Future<void> startScan(BuildContext context) async {
    int scancount = 0;
    final result = await WiFiScan.instance.startScan();

    accessPoints = <WiFiAccessPoint>[];
    notifyListeners();
    log("startScan: $result");

    final results = await WiFiScan.instance.getScannedResults();
    accessPoints = results;
    notifyListeners();

    while (scancount < accessPoints.length) {
      scannedwifis.add(accessPoints[scancount].ssid.toString());
      scancount++;
    }
  }

  Future<void> isstudentpresent(context) async {
    startScan(context);

    Future.delayed(const Duration(milliseconds: 300), () {
      for (int scancount = 0; scancount < scannedwifis.length; scancount++) {
        for (int studentcount = 0;
            studentcount < studentslist.length;
            studentcount++) {
          if (scannedwifis
              .contains(studentslist.keys.elementAt(studentcount))) {
            studentpresent.add(studentslist.values.elementAt(studentcount));
            notifyListeners();
          }
        }
      }
    });
  }

  List<String> subjects = [
    "Artificial Intelligence",
    "SPCC",
    "Computer Networks",
    "Data Structures",
    "Operating Systems",
    "Software Engineering",
  ];

  String selectedsubject = "Artificial Intelligence";

  void updateSelectedSubject(String? newValue) {
    selectedsubject = newValue!;
    notifyListeners();
  }
}
