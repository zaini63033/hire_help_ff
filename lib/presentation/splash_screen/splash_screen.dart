import 'package:flutter/material.dart';
import 'package:hire_help_ff/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                child: SingleChildScrollView(
                  padding: getPadding(
                    top: 247,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgHirehelp1,
                    height: getVerticalSize(
                      802,
                    ),
                    width: getHorizontalSize(
                      365,
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
