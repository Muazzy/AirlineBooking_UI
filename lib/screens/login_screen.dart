import 'package:airline_ui_flutter/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgGreen,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 10,
          ),
          child: SafeArea(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(emiratesLogo, height: 108, width: 156),
                ),
                const SizedBox(height: 20),
                Text(
                  loginWelcomeText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: klight,
                    fontSize: 14,
                    height: 1.5,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const CustomTextField(
                    labelText: 'Email', icon: Icons.email_outlined),
                const SizedBox(height: 30),
                const CustomTextField(
                  labelText: 'Password',
                  icon: Icons.lock_outlined,
                ),
                const SizedBox(height: 25),
                Text(
                  'Forget password?',
                  style: TextStyle(color: klight, fontSize: 12),
                ),
                const SizedBox(height: 30),
                const CustomButton(btnText: 'Log in'),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      dontHaveAnAccount,
                      style: TextStyle(color: klight),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          color: klight,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
