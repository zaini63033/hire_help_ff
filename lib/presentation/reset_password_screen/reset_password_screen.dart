import 'package:flutter/material.dart';
import 'package:hire_help_v2/core/app_export.dart';
import 'package:hire_help_v2/widgets/custom_button.dart';

class ResetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 19, top: 22, right: 19, bottom: 22),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgImage1,
                          height: getVerticalSize(36),
                          width: getHorizontalSize(39),
                          alignment: Alignment.centerLeft),
                      Padding(
                          padding: getPadding(top: 21),
                          child: Text("Reset password",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium24Black900)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 10, top: 30),
                              child: Text("New Password",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium16))),
                      CustomImageView(
                          svgPath: ImageConstant.imgPasswordholder,
                          height: getVerticalSize(60),
                          width: getHorizontalSize(296),
                          margin: getMargin(top: 5)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 9, top: 41),
                              child: Text("Confirm New Password",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium16))),
                      Container(
                          margin: getMargin(left: 10, top: 6, right: 16),
                          padding: getPadding(
                              left: 15, top: 17, right: 15, bottom: 17),
                          decoration: AppDecoration.outlineIndigo9001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    height: getVerticalSize(24),
                                    width: getHorizontalSize(20),
                                    padding: getPadding(top: 1, bottom: 1),
                                    decoration: AppDecoration.fillWhiteA700,
                                    child: Stack(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgLock,
                                          height: getVerticalSize(21),
                                          width: getHorizontalSize(15),
                                          alignment: Alignment.topLeft)
                                    ])),
                                CustomImageView(
                                    svgPath: ImageConstant.imgEyeGray800,
                                    height: getVerticalSize(24),
                                    width: getHorizontalSize(20),
                                    margin: getMargin(right: 1))
                              ])),
                      Spacer(),
                      CustomButton(
                        text: "Save",
                        margin: getMargin(left: 19, right: 17, bottom: 42),
                        shape: ButtonShape.RoundedBorder10,
                        fontStyle: ButtonFontStyle.PoppinsSemiBold24,
                        onTap: () => onTapSave(context),
                        buttonText: '',
                        onPressed: () {},
                      )
                    ]))));
  }

  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.passwordResetSuccessfulScreen);
  }
}
