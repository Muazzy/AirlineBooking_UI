import 'package:airline_ui_flutter/constants.dart';
import 'package:airline_ui_flutter/screens/login_screen.dart';
import 'package:airline_ui_flutter/screens/my_flights.dart';
import 'package:airline_ui_flutter/screens/registration.dart';
import 'package:airline_ui_flutter/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Airline UI',
      home: MyFlights(),
    );
  }
}
