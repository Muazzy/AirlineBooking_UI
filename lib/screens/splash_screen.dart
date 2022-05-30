import 'package:airline_ui_flutter/constants.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgGreen,
      body: Center(
        child: Image.asset(
          emiratesLogo,
          height: 108,
          width: 156,
        ),
      ),
    );
  }
}
