import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hire_help_v2/presentation/sign_up_one_screen/sign_up_one_screen.dart';
import 'homepage_screen/homepage_screen.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // user is logged in
          if (snapshot.hasData) {
            return HomepageScreen();
          }

          // user is NOT logged in
          else {
            return SignUpOneScreen();
          }
        },
      ),
    );
  }
}
