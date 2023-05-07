// ignore_for_file: unused_import

import 'package:app/ui/common/ui_helpers.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.black,
              Colors.blue,
              Colors.black,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Sized box for Name Tile
                const ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  trailing: CircleAvatar(
                    radius: 22,
                    backgroundImage: NetworkImage(
                        "https://media.istockphoto.com/id/597958694/photo/young-adult-male-student-in-the-lobby-of-a-university.jpg?s=612x612&w=is&k=20&c=oEno27pL3QqlA_V8ObfLPcUqVtC-pZZvCXdlaMWBu_o="),
                  ),
                  contentPadding: EdgeInsets.only(
                    left: 18,
                    right: 10,
                  ),
                  title: Text(
                    'Pratik Patil',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'Montserrat'),
                  ),
                  subtitle: Text('TE Computer Engineering',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontFamily: 'Montserrat')),
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.blueGrey,
                ),
                //Featured Stories
                const Padding(
                  padding: EdgeInsets.only(
                    top: 18.0,
                    left: 18.0,
                  ),
                  child: Text(
                    'Featured Stories',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'Montserrat'),
                  ),
                ),

                //Carousel Slider

                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  height: 200,
                  child: CarouselSlider.builder(
                    itemCount: viewModel.imageSliders.length,
                    itemBuilder: ((context, index, realIndex) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        height: 300,
                        width: MediaQuery.of(context).size.width * 1,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    viewModel.imageSliders[index]))),
                      );
                    }),
                    options: CarouselOptions(
                      height: 180.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      viewportFraction: 1,
                    ),
                  ),
                ),

                const Divider(
                  thickness: 0.5,
                  color: Colors.blueGrey,
                ),

                //Announcement
                const Padding(
                  padding: EdgeInsets.only(
                    left: 18.0,
                  ),
                  child: Text(
                    'Announcement',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'Montserrat'),
                  ),
                ),

                //Announcement List
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: viewModel.announcment[0].length,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: SizedBox(
                              width: 80,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    child: Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(viewModel
                                                .announcment[0][index])),
                                        border: Border.all(
                                            color: viewModel.isstorywatched
                                                ? Colors.white70
                                                : const Color.fromARGB(
                                                    255, 41, 4, 105),
                                            width: viewModel.isstorywatched
                                                ? 3
                                                : 4),
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                    onTap: () => viewModel.storyiswatched(),
                                  ),
                                  Text(
                                    viewModel.announcment[1][index],
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Montserrat'),
                                  ),
                                ],
                              ),
                            ));
                      }),
                ),
                const Divider(
                  thickness: 0.5,
                  color: Colors.blueGrey,
                ),
                //News & Events
                const Padding(
                  padding: EdgeInsets.only(top: 8.0, left: 18.0, bottom: 8.0),
                  child: Text(
                    'News & Events',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'Montserrat'),
                  ),
                ),

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                  child: SizedBox(
                    height: 320,
                    width: double.infinity,
                    child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return ClipRect(
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  Container(
                                    height: 50,
                                    width: double.infinity,
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Colors.black,
                                        Colors.blue,
                                      ]),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20)),
                                    ),
                                    child: Row(children: [
                                      horizontalSpaceTiny,
                                      Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: NetworkImage(viewModel
                                                  .newsevents[0][index])),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                      horizontalSpaceSmall,
                                      Text(
                                        viewModel.newsevents[1][index],
                                        style: const TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: 'Montserrat'),
                                      ),
                                      const Spacer(
                                        flex: 1,
                                      ),
                                      IconButton(
                                          onPressed: () => viewModel.launchlink(
                                              viewModel.newsevents[3][index]),
                                          icon: const Icon(
                                            Icons.link,
                                            color: Colors.white,
                                          ))
                                    ]),
                                  ),
                                  Container(
                                    height: 100,
                                    width: double.infinity,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        viewModel.newsevents[2][index],
                                        style: const TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: 'Montserrat'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ),

                //Maps
                // SizedBox(
                //   height: 100,
                //   width: double.infinity,
                //   // in the below line, creating google maps.
                //   child: GoogleMap(
                //     // in the below line, setting camera position
                //     initialCameraPosition: viewModel.kGoogle,
                //     // in the below line, specifying map type.
                //     mapType: MapType.normal,
                //     // in the below line, setting user location enabled.
                //     myLocationEnabled: true,
                //     // in the below line, setting compass enabled.
                //     compassEnabled: true,
                //     // in the below line, specifying controller on map complete.
                //     onMapCreated: (GoogleMapController controller) {
                //       viewModel.controller.complete(controller);
                //     },
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      "YOLO",
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 100,
                          color: Colors.white.withOpacity(0.7),
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20, left: 150),
                  child: Text(
                    "❤️ Your Overall Look for Opportunities",
                    style: TextStyle(
                        color: Colors.white54,
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Montserrat'),
                  ),
                ),

                //Insert a map of india here
              ],
            )),
          ),
        ));
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
