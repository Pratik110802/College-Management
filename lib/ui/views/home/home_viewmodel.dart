import 'dart:async';

import 'package:app/app/app.locator.dart';
import 'package:app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

//News Launch
  Future<void> launchlink(String url) async {
    Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  bool isstorywatched = false;

  void storyiswatched() {
    if (isstorywatched) {
      isstorywatched = false;
    } else {
      isstorywatched = true;
    }

    notifyListeners();
  }

  //Maps

  // Completer<GoogleMapController> controller = Completer();

  // // in the below line, we are specifying our camera position
  // final CameraPosition kGoogle = const CameraPosition(
  //   target: LatLng(37.42796133580664, -122.885749655962),
  //   zoom: 14.4746,
  // );

//Navigation
  void navigateToSignin() {
    _navigationService.navigateToSigninView();
  }

  void navigatetowifiScan() {
    _navigationService.navigateToWifiscanView();
  }

  //DATA

  List<String> imageSliders = [
    "https://bvcoenm.edu.in/wp-content/uploads/2022/02/IS-e1652435200800-360x220.jpeg",
    "https://bvcoenm.edu.in/wp-content/uploads/2022/08/sih2-360x220.jpg"
  ];

  List<List<String>> announcment = [
    [
      "https://bvcoenm.edu.in/wp-content/uploads/2021/06/Principal-.jpeg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ818gyUjP2n3JV2ZodyVCe7pSG91-2BUNdictDYLSY9YzK2D3QfOwlEC1sLI8oaY7atDpwqMjZ7Wk&usqp=CAU&ec=48600112",
      "https://instagram.fbom19-2.fna.fbcdn.net/v/t51.2885-19/274468375_234174395578930_2858508776178219648_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fbom19-2.fna.fbcdn.net&_nc_cat=110&_nc_ohc=R2DNVt9mLvcAX-Efdzw&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfBvkTjX-cToUXeh-egeiC4JIsFsJrWhmN5UDFi2qTxScw&oe=644CB4FA&_nc_sid=8fd12b",
      "https://images.shiksha.com/mediadata/images/1612766329phpQJwtIv.jpeg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ818gyUjP2n3JV2ZodyVCe7pSG91-2BUNdictDYLSY9YzK2D3QfOwlEC1sLI8oaY7atDpwqMjZ7Wk&usqp=CAU&ec=48600112"
    ],
    [
      "Principal",
      "Council",
      "CESA",
      "Office",
      "Sigma",
    ],
  ];

  List<List<String>> newsevents = [
    [
      "https://kavach.mic.gov.in/img/kavach-logo-white.png",
      "https://mu.ac.in/wp-content/uploads/2019/03/University-logo321.png"
    ],
    ["Kavach Hackathon", "Summer Exams"],
    [
      "KAVACH-2023 is a unique opportunity for higher institutional Students and Startups in India to submit their innovative ideas/concepts under the different problem statements. This event is going to be conducted in physical mode in two phase’s viz. Initial Phase/Idea screening round and Grand Finale round.",
      "The University of Mumbai is one of the oldest and premier Universities of India. I am honoured and greatly privileged to lead this great Institution; and continue to address the imminent challenges and to harness the overt and covert opportunities, in order to satisfy our stake holders."
    ],
    [
      "https://kavach.mic.gov.in/",
      "https://mu.ac.in/examination/timetable-for-summer-2023"
    ]
  ];
}
