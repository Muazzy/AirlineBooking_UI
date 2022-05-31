// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:airline_ui_flutter/constants.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MyFlights extends StatefulWidget {
  MyFlights({Key? key}) : super(key: key);

  @override
  State<MyFlights> createState() => _MyFlightsState();
}

class _MyFlightsState extends State<MyFlights> {
  @override
  Widget build(BuildContext context) {
    var safeAreaTopSpace = MediaQuery.of(context).padding.top * 1.5;
    var maxHeightofSup = MediaQuery.of(context).size.height - safeAreaTopSpace;
    var minHeightofSup = MediaQuery.of(context).size.height * 0.6;

    return Scaffold(
      floatingActionButton: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: korange,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: korange.withOpacity(0.15),
              spreadRadius: 5,
              blurRadius: 10,
              offset: Offset(0, 3),
            )
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: korange,
          elevation: 0,
          child: Icon(
            Icons.add,
            size: 30,
          ),
        ),
      ),
      backgroundColor: kBgGreen,
      body: SlidingUpPanel(
        minHeight: minHeightofSup,
        maxHeight: maxHeightofSup,
        borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
        body: MyflightBackgroundWidget(),
        panelBuilder: (controller) => MyFlightList(
          controller: controller,
        ),
      ),
    );
  }
}

class MyflightBackgroundWidget extends StatelessWidget {
  const MyflightBackgroundWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/earth_Image.png'),
            fit: BoxFit.contain,
            alignment: Alignment.topCenter,
          ),
        ),
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        margin: EdgeInsets.only(top: 36),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  color: klight,
                  size: 30,
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                    'assets/images/user_avatar.png',
                  ),
                )
              ],
            ),
            SizedBox(height: 35),
            Text(
              'My Flights',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: klight, fontSize: 40, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 15),
            Text(
              'Fly high anytime, to anywhere for anything',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: klight, fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}

class MyFlightList extends StatelessWidget {
  final ScrollController controller;

  const MyFlightList({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF5F6F8),
      padding: EdgeInsets.symmetric(horizontal: 28, vertical: 10),
      child: Column(
        children: [
          //implement listview here.
          FlightTile(key: key),
          SizedBox(height: 16),
          FlightTile(key: key),
          SizedBox(height: 16),

          FlightTile(key: key),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

class FlightTile extends StatelessWidget {
  // final String departure;
  // final String destination;
  // final String depShortForm;
  // final String destShortForm;
  // final String dateAndTime;
  // final String flightNo;
  // final String flightDuration;

  const FlightTile({
    Key? key,
    // required this.departure,
    // required this.destination,
    // required this.depShortForm,
    // required this.destShortForm,
    // required this.dateAndTime,
    // required this.flightNo,
    // required this.flightDuration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // constraints: BoxConstraints.tight(Size(188, 188)),

      padding: EdgeInsets.all(24),
      // height: 188,
      // width: 188,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CGK',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 36,
                      color: kBgGreen,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'jakarta',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: kdark,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CGK',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 36,
                      color: kBgGreen,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'jakarta',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: kdark,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 28,
                  width: 56,
                  child: Image.asset('assets/images/Group 115 (1).png'),
                ),
                Text(
                  '1h 35m',
                  style: TextStyle(color: kdark, fontSize: 10),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'DATE',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: kgrey,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Jan 01, 8:35 PM',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: kdark,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'FLIGHT NO',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: kgrey,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'MZ114',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: kdark,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
