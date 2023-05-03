// ignore: duplicate_ignore
// ignore_for_file: duplicate_ignore

import 'package:flutter/material.dart';
import 'package:hire_help_v2/core/app_export.dart';
import 'package:hire_help_v2/widgets/app_bar/appbar_image.dart';
import 'package:hire_help_v2/widgets/app_bar/custom_app_bar.dart';
import 'package:hire_help_v2/widgets/custom_button.dart';
import 'package:hire_help_v2/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class PaymentMethodsScreen extends StatelessWidget {
  TextEditingController paymentmethodOneController = TextEditingController();

  TextEditingController paymentmethodTwoController = TextEditingController();

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
                    onTap: () => onTapImageFour1(context)),
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
                      Padding(
                          padding: getPadding(left: 11, top: 36, right: 19),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage1,
                                    height: getVerticalSize(24),
                                    width: getHorizontalSize(28),
                                    margin: getMargin(bottom: 12)),
                                Text("Payment Methods",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium24),
                                CustomImageView(
                                    svgPath: ImageConstant.imgEdit,
                                    height: getVerticalSize(19),
                                    width: getHorizontalSize(23),
                                    margin: getMargin(top: 2, bottom: 15))
                              ])),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: paymentmethodOneController,
                          hintText: "**** 1234 ",
                          margin: getMargin(left: 30, top: 31, right: 30),
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 8, right: 15, bottom: 8),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgVolume)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(40))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: paymentmethodTwoController,
                          hintText: "**** 4887 ",
                          margin: getMargin(left: 30, top: 12, right: 30),
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 8, right: 15, bottom: 8),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgIcons,
                                  height: getSize(24),
                                  width: getSize(24))),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(40))),
                      Container(
                          margin: getMargin(left: 29, top: 30, right: 30),
                          padding: getPadding(
                              left: 20, top: 7, right: 20, bottom: 7),
                          decoration: AppDecoration.fillAmber300.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("Add new payment method",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtLatoMedium16)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgPlus,
                                    height: getSize(24),
                                    width: getSize(24))
                              ])),
                      Spacer(),
                      CustomButton(
                        text: "Apply",
                        margin: getMargin(left: 20, right: 20),
                        padding: ButtonPadding.PaddingAll10,
                        fontStyle: ButtonFontStyle.LatoBlack16,
                        buttonText: '',
                        onPressed: () {},
                      ),
                      Padding(
                          padding: getPadding(top: 128),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.black900)),
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

  onTapAnashif(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageScreen);
  }

  onTapProfil(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  onTapImageFour1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menuScreen);
  }
}
