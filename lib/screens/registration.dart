// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:airline_ui_flutter/constants.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgGreen,

      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: kBgGreen,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: klight,
            size: 30,
          ),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text(
          'Registration',
          style: TextStyle(fontSize: 24, color: klight),
        ),
      ),

      //body
      body: SafeArea(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(45), topRight: Radius.circular(45)),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            padding: EdgeInsets.all(30),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Center(
                    child: Text(
                      'Create Your Account',
                      style: TextStyle(
                        color: kTextDarkGreen,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  RegFormfield(labelText: 'E-mail Address', suffixIcon: null),
                  SizedBox(height: 20),
                  RegFormfield(
                      labelText: 'Verify E-mail Address', suffixIcon: null),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                          child: RegFormfield(
                              labelText: 'First Name', suffixIcon: null)),
                      SizedBox(width: 10),
                      Expanded(
                          child: RegFormfield(
                              labelText: 'Last Name', suffixIcon: null)),
                    ],
                  ),
                  SizedBox(height: 20),
                  RegFormfield(
                    labelText: 'Password',
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      size: 16,
                      color: kdark,
                    ),
                  ),
                  SizedBox(height: 20),
                  RegFormfield(
                    labelText: 'Verify Password',
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      size: 16,
                      color: kdark,
                    ),
                  ),
                  SizedBox(height: 30),
                  CustomButton(btnText: 'Create Account'),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        alreadyhaveanAcc,
                        style: TextStyle(color: kdark),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Log in.',
                          style: TextStyle(
                            color: kdark,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
