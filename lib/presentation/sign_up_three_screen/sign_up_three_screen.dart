import 'package:flutter/material.dart';
import 'package:hire_help_v2/core/app_export.dart';

class SignUpThreeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: getHorizontalSize(364),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: getPadding(
                                      left: 19,
                                      top: 21,
                                      right: 47,
                                      bottom: 188),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage1,
                                            height: getVerticalSize(36),
                                            width: getHorizontalSize(39),
                                            alignment: Alignment.centerLeft),
                                        Padding(
                                            padding:
                                                getPadding(top: 95, right: 51),
                                            child: Text("Add Picture",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtLatoSemiBold32)),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgProfilepic,
                                            height: getVerticalSize(221),
                                            width: getHorizontalSize(219),
                                            margin:
                                                getMargin(top: 31, right: 19)),
                                        GestureDetector(
                                            onTap: () {
                                              onTapLoginbutton(context);
                                            },
                                            child: Container(
                                                margin: getMargin(
                                                    left: 30, top: 122),
                                                padding: getPadding(
                                                    left: 14,
                                                    top: 7,
                                                    right: 14,
                                                    bottom: 7),
                                                decoration: AppDecoration.button
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder7),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 15, top: 1),
                                                          child: Text("Save",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsSemiBold20)),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgImage131x31,
                                                          height: getSize(31),
                                                          width: getSize(31))
                                                    ])))
                                      ]))))
                    ]))));
  }

  onTapLoginbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageScreen);
  }
}
