import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MainscreenViewModel extends BaseViewModel {
  int currentIndex = 0;
  void setIndex(int index) {
    currentIndex = index;
    notifyListeners();
    debugPrint("Index is $currentIndex");
  }
}
