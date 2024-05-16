import 'package:flutter/material.dart';
import 'login.dart';
import 'sign_up.dart';
import 'onboarding.dart';
import 'signup_succes.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => OnboardingScreen(),
      '/login_page' :(context) => LoginPage(),
      '/sign_up': (context) => SignUpPage(),
      '/successful':(context) => SuccessfulPage(),
    },
  ));
}