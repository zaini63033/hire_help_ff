import 'package:flutter/material.dart';
import 'package:hire_help_v2/core/app_export.dart';
import 'package:hire_help_v2/widgets/custom_icon_button.dart';

class ForgotPasswordInputFieldScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(all: 23),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgLock,
                                    height: getVerticalSize(77),
                                    width: getHorizontalSize(67),
                                    margin: getMargin(top: 14)),
                                CustomIconButton(
                                    height: 33,
                                    width: 33,
                                    margin: getMargin(left: 88, bottom: 58),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgClose))
                              ])),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Text("Forgot your Password?",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold22)),
                      Padding(
                          padding: getPadding(top: 5),
                          child: Text("Enter your email address ",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular16)),
                      Container(
                          width: getHorizontalSize(304),
                          margin: getMargin(left: 7, top: 12, right: 3),
                          padding: getPadding(
                              left: 16, top: 21, right: 16, bottom: 21),
                          decoration: AppDecoration.outlineIndigo900.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCarbonemail,
                                    height: getVerticalSize(16),
                                    width: getHorizontalSize(23))
                              ])),
                      GestureDetector(
                          onTap: () {
                            onTapLoginbutton(context);
                          },
                          child: Container(
                              margin: getMargin(
                                  left: 21, top: 30, right: 19, bottom: 5),
                              padding: getPadding(
                                  left: 91, top: 7, right: 91, bottom: 7),
                              decoration: AppDecoration.button.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder7),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text("Next",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold24),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage131x31,
                                        height: getVerticalSize(21),
                                        width: getHorizontalSize(24),
                                        margin: getMargin(
                                            left: 5,
                                            top: 7,
                                            right: 4,
                                            bottom: 7))
                                  ])))
                    ]))));
  }

  onTapLoginbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.resetPasswordScreen);
  }
}