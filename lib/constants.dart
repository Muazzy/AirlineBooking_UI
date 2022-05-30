// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

//colors
Color kBgGreen = const Color(0xff0B655A);
Color kTextDarkGreen = const Color(0xff2B4240);
Color kgrey = const Color(0xffB2C7C5);
Color klight = const Color(0xffF8F6E7);
Color korange = const Color(0xffFF8A63);
Color kdark = const Color(0xff2B4240);

//images
const emiratesLogo = 'assets/images/emirates_logo.png';
const emiratesLogoRed = 'assets/images/emirates_logo_red.png';
const earthImage = 'assets/images/Earth Image 1.png';

//texts
const loginWelcomeText =
    'Welcome to the Emirates Application,\nfind the various flights you need!';
const dontHaveAnAccount = "Don't have an account?";
const alreadyhaveanAcc = "Already have an account?";

class CustomTextField extends StatelessWidget {
  final String? labelText;
  final IconData? icon;

  const CustomTextField({@required this.labelText, @required this.icon});
  @override
  Widget build(BuildContext context) {
    bool obscureText = true;
    return TextFormField(
      obscureText: labelText == "Password" ? true : false,
      style: TextStyle(
        color: klight,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      cursorColor: klight,
      decoration: InputDecoration(
        prefixIcon: Container(
          margin: const EdgeInsets.only(
            right: 15,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(color: klight),
            ),
          ),
          child: Icon(
            icon,
            color: klight,
          ),
        ),
        suffixIcon: labelText == "Password"
            ? Icon(
                obscureText
                    ? Icons.remove_red_eye_outlined
                    : Icons.remove_red_eye,
                color: klight,
                size: 16,
              )
            : null,
        labelStyle: const TextStyle(fontWeight: FontWeight.w400),
        label: Text(
          labelText!,
          style: TextStyle(
            color: klight,
            fontSize: 14,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: klight,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: klight,
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String? btnText;

  const CustomButton({@required this.btnText});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          color: korange,
          borderRadius: const BorderRadius.all(
            Radius.circular(20.0),
          ),
          boxShadow: [
            BoxShadow(
              color: klight.withOpacity(0.15),
              spreadRadius: 5,
              blurRadius: 10,
              offset: Offset(0, 3),
            )
          ]),
      child: Center(
        child: GestureDetector(
          onTap: () {},
          child: Text(
            btnText!,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              letterSpacing: 0.0,
              color: klight,
            ),
          ),
        ),
      ),
    );
  }
}

class RegFormfield extends StatelessWidget {
  final String? labelText;
  final Icon? suffixIcon;

  const RegFormfield({@required this.labelText, @required this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        color: kdark,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      cursorColor: kdark,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        contentPadding: const EdgeInsets.only(left: 18, right: 18),
        labelStyle: TextStyle(
          fontWeight: FontWeight.w400,
          color: kgrey,
          fontSize: 12,
        ),
        floatingLabelStyle: TextStyle(color: kdark),
        label: Text(
          labelText!,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kdark,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kgrey,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
      ),
    );
  }
}
