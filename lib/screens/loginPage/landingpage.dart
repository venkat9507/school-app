import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_school_app_july_1/services/auth.dart';
import 'package:flutter_school_app_july_1/screens/dashboard/dashboard.dart';
import 'package:flutter_school_app_july_1/screens/loginPage/login_page.dart';

class LandingPage extends StatelessWidget {

  final AuthenticationService auth;
  const LandingPage({@required this.auth});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User>(
      stream: auth.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final User user = snapshot.data;
          if (user == null) {
            return LoginPage(auth: auth);
          }
          return DashBoard(auth: auth);
        }
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }



}