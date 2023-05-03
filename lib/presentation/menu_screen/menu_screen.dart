import 'package:flutter/material.dart';
import 'package:hire_help_v2/core/app_export.dart';
import 'package:hire_help_v2/widgets/app_bar/appbar_image.dart';
import 'package:hire_help_v2/widgets/app_bar/custom_app_bar.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(74),
                leadingWidth: 57,
                leading: AppbarImage(
                    height: getSize(32),
                    width: getSize(32),
                    imagePath: ImageConstant.imgImage4,
                    margin: getMargin(left: 25, top: 25, bottom: 12)),
                centerTitle: true,
                title: AppbarImage(
                    height: getVerticalSize(69),
                    width: getHorizontalSize(178),
                    imagePath: ImageConstant.imgHirehelp1137x254),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(32),
                      width: getHorizontalSize(27),
                      imagePath: ImageConstant.imgImage232x27,
                      margin:
                          getMargin(left: 28, top: 26, right: 28, bottom: 11))
                ]),
            body: Container(
                height: getVerticalSize(715),
                width: getHorizontalSize(364),
                child: Stack(alignment: Alignment.centerLeft, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: getPadding(top: 6),
                          child: SizedBox(
                              width: getHorizontalSize(358),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.black900)))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          padding: getPadding(
                              left: 24, top: 54, right: 24, bottom: 54),
                          decoration: AppDecoration.fillAmberA700c6.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderLR40),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapViewprofile(context);
                                    },
                                    child: Padding(
                                        padding: getPadding(left: 2),
                                        child: Row(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgUser,
                                              height: getVerticalSize(18),
                                              width: getHorizontalSize(14),
                                              margin: getMargin(
                                                  top: 15, bottom: 16)),
                                          Container(
                                              width: getHorizontalSize(58),
                                              margin: getMargin(left: 20),
                                              child: Text("View Profile",
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtLexendMedium18
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.18))))
                                        ]))),
                                Container(
                                    height: getVerticalSize(482),
                                    width: getHorizontalSize(247),
                                    margin:
                                        getMargin(left: 1, top: 13, bottom: 54),
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 2, top: 28),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgSubscription1,
                                                        height: getSize(22),
                                                        width: getSize(22),
                                                        margin: getMargin(
                                                            bottom: 1)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 12),
                                                        child: Text(
                                                            "Subscription",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtLexendMedium18WhiteA700
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.18))))
                                                  ]))),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 1, top: 109),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .img001shoppingcart,
                                                        height:
                                                            getVerticalSize(21),
                                                        width:
                                                            getHorizontalSize(
                                                                22),
                                                        margin:
                                                            getMargin(top: 1)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 12),
                                                        child: Text("Services",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtLexendMedium18WhiteA700
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.18))))
                                                  ]))),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 4, top: 185),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgSearch,
                                                        height:
                                                            getVerticalSize(18),
                                                        width:
                                                            getHorizontalSize(
                                                                16),
                                                        margin: getMargin(
                                                            top: 1, bottom: 3)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 15),
                                                        child: Text(
                                                            "Search History",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtLexendMedium18WhiteA700
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.18))))
                                                  ]))),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 1, bottom: 194),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgLocationpin1,
                                                        height: getSize(22),
                                                        width: getSize(22)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 14),
                                                        child: Text("Location",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtLexendMedium18WhiteA700
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.18))))
                                                  ]))),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: GestureDetector(
                                                  onTap: () {
                                                    onTapBlockuser(context);
                                                  },
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 2, bottom: 103),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgGear1,
                                                                height:
                                                                    getSize(20),
                                                                width:
                                                                    getSize(20),
                                                                margin:
                                                                    getMargin(
                                                                        bottom:
                                                                            6)),
                                                            Padding(
                                                                padding: getPadding(
                                                                    left: 14,
                                                                    top: 3),
                                                                child: Text(
                                                                    "Settings",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtLexendMedium18WhiteA700
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                getHorizontalSize(0.18))))
                                                          ])))),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: GestureDetector(
                                                  onTap: () {
                                                    onTapReport(context);
                                                  },
                                                  child: Padding(
                                                      padding: getPadding(
                                                          bottom: 28),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgRefresh,
                                                            height: getSize(24),
                                                            width: getSize(24),
                                                            margin: getMargin(
                                                                bottom: 2)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 11,
                                                                top: 3),
                                                            child:
                                                                GestureDetector(
                                                              onTap: () {
                                                                Navigator.pushNamed(
                                                                    context,
                                                                    AppRoutes
                                                                        .signUpOneScreen);
                                                              },
                                                              child: Text(
                                                                "Log Out",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtLexendMedium18WhiteA700
                                                                    .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.18),
                                                                ),
                                                              ),
                                                            ))
                                                      ])))),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgDividers,
                                              height: getVerticalSize(482),
                                              width: getHorizontalSize(246),
                                              alignment: Alignment.center)
                                        ]))
                              ])))
                ]))));
  }

  onTapViewprofile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  onTapBlockuser(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsScreen);
  }

  onTapReport(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.onboardingOneScreen);
  }
}
