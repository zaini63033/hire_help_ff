import 'package:flutter/material.dart';
import 'package:hire_help_v2/core/app_export.dart';
import 'package:hire_help_v2/widgets/app_bar/appbar_image.dart';
import 'package:hire_help_v2/widgets/app_bar/custom_app_bar.dart';

class SettingsScreen extends StatelessWidget {
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
                    margin: getMargin(left: 25, top: 25, bottom: 12),
                    onTap: () => onTapImageFour2(context)),
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
                width: getHorizontalSize(364),
                padding: getPadding(top: 6, bottom: 6),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Divider(
                          height: getVerticalSize(1),
                          thickness: getVerticalSize(1),
                          color: ColorConstant.black900,
                          endIndent: getHorizontalSize(6)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 13, top: 29),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage1,
                                        height: getVerticalSize(36),
                                        width: getHorizontalSize(39),
                                        margin: getMargin(bottom: 13)),
                                    Padding(
                                        padding: getPadding(left: 65, top: 1),
                                        child: Text("Settings",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsMedium32Indigo900))
                                  ]))),
                      GestureDetector(
                          onTap: () {
                            onTapBox(context);
                          },
                          child: Container(
                              margin: getMargin(left: 12, top: 17, right: 17),
                              padding: getPadding(
                                  left: 15, top: 13, right: 15, bottom: 13),
                              decoration: AppDecoration.fillAmber300.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder7),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 3),
                                        child: Text("Update Profile",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtLatoBlack16)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getSize(24),
                                        width: getSize(24))
                                  ]))),
                      GestureDetector(
                          onTap: () {
                            onTapBox1(context);
                          },
                          child: Container(
                              margin: getMargin(left: 11, top: 19, right: 18),
                              padding: getPadding(
                                  left: 15, top: 13, right: 15, bottom: 13),
                              decoration: AppDecoration.fillAmber300.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder7),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 3),
                                        child: Text("Payment methods",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtLatoBlack16)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getSize(24),
                                        width: getSize(24))
                                  ]))),
                      Container(
                          margin: getMargin(left: 13, top: 22, right: 16),
                          padding: getPadding(
                              left: 15, top: 12, right: 15, bottom: 12),
                          decoration: AppDecoration.fillAmber300.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 4),
                                    child: Text("Language",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtLatoBlack16)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(24),
                                    width: getSize(24))
                              ])),
                      Container(
                          margin: getMargin(left: 13, top: 21, right: 16),
                          padding: getPadding(
                              left: 15, top: 13, right: 15, bottom: 13),
                          decoration: AppDecoration.fillAmber300.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 2, bottom: 1),
                                    child: Text("Notifications",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtLatoBlack16)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(24),
                                    width: getSize(24))
                              ])),
                      Container(
                          margin: getMargin(left: 13, top: 22, right: 16),
                          padding: getPadding(
                              left: 14, top: 13, right: 14, bottom: 13),
                          decoration: AppDecoration.fillAmber300.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("Account Settings",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtLatoBlack16)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(24),
                                    width: getSize(24))
                              ])),
                      GestureDetector(
                          onTap: () {
                            onTapBox2(context);
                          },
                          child: Container(
                              margin: getMargin(left: 12, top: 19, right: 17),
                              padding: getPadding(
                                  left: 15, top: 13, right: 15, bottom: 13),
                              decoration: AppDecoration.fillAmber300.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder7),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 3),
                                        child: Text("Update Password",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtLatoBlack16)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getSize(24),
                                        width: getSize(24))
                                  ]))),
                      Spacer(),
                      Divider(
                          height: getVerticalSize(1),
                          thickness: getVerticalSize(1),
                          color: ColorConstant.black900),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(
                                  left: 25, top: 11, right: 6, bottom: 8),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          onTapAnashif(context);
                                        },
                                        child: Padding(
                                            padding: getPadding(bottom: 1),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgHome,
                                                      height: getSize(24),
                                                      width: getSize(24)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 5),
                                                      child: Text("Home",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtLatoBlack12))
                                                ]))),
                                    Spacer(flex: 35),
                                    GestureDetector(
                                        onTap: () {
                                          onTapProfil(context);
                                        },
                                        child: Padding(
                                            padding: getPadding(bottom: 1),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgUserBlueGray800,
                                                      height: getSize(24),
                                                      width: getSize(24)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 5),
                                                      child: Text("Profile",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtLatoBlack12))
                                                ]))),
                                    Spacer(flex: 32),
                                    Padding(
                                        padding: getPadding(top: 2),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .img001shoppingcart,
                                                  height: getVerticalSize(26),
                                                  width: getHorizontalSize(28),
                                                  margin: getMargin(left: 7)),
                                              Text("Services",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtLatoBlack12)
                                            ])),
                                    Spacer(flex: 32),
                                    Padding(
                                        padding: getPadding(top: 3),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage5,
                                                  height: getSize(24),
                                                  width: getSize(24)),
                                              Padding(
                                                  padding: getPadding(top: 3),
                                                  child: Text("Messages",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtLatoBlack12))
                                            ]))
                                  ])))
                    ]))));
  }

  onTapBox(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  onTapBox1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentMethodsScreen);
  }

  onTapBox2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.updatePasswordScreen);
  }

  onTapAnashif(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageScreen);
  }

  onTapProfil(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  onTapImageFour2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menuScreen);
  }
}
