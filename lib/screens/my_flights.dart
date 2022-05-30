import 'package:flutter/material.dart';
import 'package:airline_ui_flutter/constants.dart';

class MyFlights extends StatefulWidget {
  MyFlights({Key? key}) : super(key: key);

  @override
  State<MyFlights> createState() => _MyFlightsState();
}

class _MyFlightsState extends State<MyFlights> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgGreen,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/earth_Image.png'),
              fit: BoxFit.contain,
              alignment: Alignment.topCenter,
            ),
          ),
          padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
          // margin: EdgeInsets.only(top: 0),
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
      ),
    );
  }
}
