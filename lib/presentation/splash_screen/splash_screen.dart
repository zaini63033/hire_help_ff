import 'package:flutter/material.dart';
import 'package:hire_help_v2/core/app_export.dart';

import '../onboarding_one_screen/onboarding_one_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => OnboardingOneScreen(),
        ),
      );
    });

    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: getHorizontalSize(
            365,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Center(
                  child: SingleChildScrollView(
                    child: Image.asset(
                      ImageConstant.imgHirehelp1,
                      fit: BoxFit.fill,
                      scale: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
