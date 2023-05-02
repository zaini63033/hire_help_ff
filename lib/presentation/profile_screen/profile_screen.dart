import 'package:flutter/material.dart';
import 'package:hire_help_v2/core/app_export.dart';
import 'package:hire_help_v2/widgets/app_bar/appbar_image.dart';
import 'package:hire_help_v2/widgets/app_bar/custom_app_bar.dart';
import 'package:hire_help_v2/widgets/custom_button.dart';
import 'package:hire_help_v2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {
  TextEditingController rectangleOneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(74),
                leadingWidth: 57,
                leading: AppbarImage(
                    height: getSize(32),
                    width: getSize(32),
                    imagePath: ImageConstant.imgImage4,
                    margin: getMargin(left: 25, top: 25, bottom: 12),
                    onTap: () => onTapImageFour(context)),
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
                padding: getPadding(top: 4, bottom: 4),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(231),
                          width: getHorizontalSize(364),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: getPadding(top: 2),
                                    child: SizedBox(
                                        width: getHorizontalSize(358),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.black900)))),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: getVerticalSize(231),
                                    width: getHorizontalSize(364),
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                  height: getVerticalSize(195),
                                                  width: getHorizontalSize(364),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        13),
                                                                width:
                                                                    getHorizontalSize(
                                                                        340),
                                                                margin:
                                                                    getMargin(
                                                                        bottom:
                                                                            16),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .gray300,
                                                                    borderRadius: BorderRadius.only(
                                                                        topLeft:
                                                                            Radius.circular(getHorizontalSize(
                                                                                10)),
                                                                        topRight:
                                                                            Radius.circular(getHorizontalSize(10)))))),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                padding:
                                                                    getPadding(
                                                                        left: 1,
                                                                        right:
                                                                            1),
                                                                decoration: BoxDecoration(
                                                                    image: DecorationImage(
                                                                        image: AssetImage(ImageConstant
                                                                            .imgGroup5),
                                                                        fit: BoxFit
                                                                            .cover)),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  20),
                                                                          child: Text(
                                                                              "Profile",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPoppinsMedium32)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgMask,
                                                                          height: getVerticalSize(
                                                                              15),
                                                                          width: getHorizontalSize(
                                                                              360),
                                                                          radius: BorderRadius.only(
                                                                              topLeft: Radius.circular(getHorizontalSize(30)),
                                                                              topRight: Radius.circular(getHorizontalSize(30))),
                                                                          margin: getMargin(top: 110))
                                                                    ])))
                                                      ]))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgProfilepic,
                                              height: getVerticalSize(148),
                                              width: getHorizontalSize(144),
                                              alignment: Alignment.bottomCenter)
                                        ])))
                          ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 28, top: 2),
                              child: Text("Name",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium14))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: rectangleOneController,
                          margin: getMargin(left: 28, top: 3, right: 29),
                          shape: TextFormFieldShape.RoundedBorder7,
                          textInputAction: TextInputAction.done),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 28, top: 10),
                              child: Text("Email Address",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium14))),
                      Container(
                          width: getHorizontalSize(306),
                          margin: getMargin(left: 28, top: 3, right: 29),
                          padding: getPadding(
                              left: 11, top: 5, right: 11, bottom: 5),
                          decoration: AppDecoration.outlineIndigo900.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCarbonemail,
                                    height: getVerticalSize(24),
                                    width: getHorizontalSize(25),
                                    margin: getMargin(top: 6))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 37, top: 12),
                              child: Text("Number",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium14))),
                      Container(
                          width: getHorizontalSize(306),
                          margin: getMargin(left: 28, top: 3, right: 29),
                          padding: getPadding(
                              left: 14, top: 7, right: 14, bottom: 7),
                          decoration: AppDecoration.outlineIndigo900.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgIcons8phone50,
                                    height: getSize(24),
                                    width: getSize(24))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 36, top: 11),
                              child: Text("Address",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium14))),
                      Container(
                          height: getVerticalSize(40),
                          width: getHorizontalSize(306),
                          margin: getMargin(top: 5),
                          decoration: BoxDecoration(
                              color: ColorConstant.whiteA700,
                              borderRadius:
                                  BorderRadius.circular(getHorizontalSize(7)),
                              border: Border.all(
                                  color: ColorConstant.indigo900,
                                  width: getHorizontalSize(1)))),
                      CustomButton(
                        text: "Update",
                        margin: getMargin(left: 48, top: 35, right: 48),
                        padding: ButtonPadding.PaddingAll10,
                        buttonText: '',
                        onPressed: () {},
                      ),
                      Padding(
                          padding: getPadding(top: 34),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.black900)),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(
                                  left: 25, top: 11, right: 6, bottom: 5),
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
                                    Padding(
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
                                                  padding: getPadding(top: 5),
                                                  child: Text("Profile",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtLatoBlack12))
                                            ])),
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

  onTapAnashif(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageScreen);
  }

  onTapImageFour(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menuScreen);
  }
}
