import 'package:flutter/material.dart';
import 'package:hire_help_v2/core/app_export.dart';
import 'package:hire_help_v2/widgets/custom_button.dart';

class OnboardingOneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 41, bottom: 41),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: getVerticalSize(242),
                              width: getHorizontalSize(340),
                              margin: getMargin(top: 11),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text("New User",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtLatoRegular32)),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgHirehelp1203x340,
                                        height: getVerticalSize(203),
                                        width: getHorizontalSize(340),
                                        alignment: Alignment.topCenter)
                                  ]))),
                      Container(
                          margin: getMargin(left: 20, top: 62, right: 20),
                          padding: getPadding(
                              left: 23, top: 10, right: 23, bottom: 10),
                          decoration: AppDecoration.fillIndigo900.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder27),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage127x34,
                                    height: getVerticalSize(27),
                                    width: getHorizontalSize(34),
                                    margin: getMargin(top: 3, bottom: 3)),
                                Padding(
                                    padding:
                                        getPadding(left: 8, top: 4, right: 2),
                                    child: Text("Sign Up with Facebook",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold20))
                              ])),
                      Container(
                          margin: getMargin(left: 20, top: 25, right: 20),
                          padding: getPadding(top: 10, bottom: 10),
                          decoration: AppDecoration.fillPink900.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder27),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage2,
                                    height: getSize(27),
                                    width: getSize(27),
                                    margin: getMargin(top: 4, bottom: 2)),
                                Padding(
                                    padding: getPadding(top: 4),
                                    child: Text("Sign Up with Google",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold20))
                              ])),
                      CustomButton(
                        height: getVerticalSize(55),
                        text: "Sign Up with Hire Help",
                        margin: getMargin(left: 20, top: 25, right: 20),
                        variant: ButtonVariant.FillLime700,
                        shape: ButtonShape.RoundedBorder27,
                        fontStyle: ButtonFontStyle.PoppinsSemiBold20,
                        onTap: () => onTapSignupwithhirehelp(context),
                        buttonText: '',
                        onPressed: () {},
                      ),
                      Spacer(),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Have an account already? ",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium1076),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtLanguage(context);
                                },
                                child: Padding(
                                    padding: getPadding(left: 3),
                                    child: Text(" Log in",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium1076Indigo90002)))
                          ])
                    ]))));
  }

  onTapSignupwithhirehelp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpOneScreen);
  }

  onTapTxtLanguage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginPageScreen);
  }
}
