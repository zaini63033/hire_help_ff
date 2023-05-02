import 'package:flutter/material.dart';import 'package:hire_help_ff/core/app_export.dart';import 'package:hire_help_ff/presentation/homepage_page/homepage_page.dart';import 'package:hire_help_ff/widgets/app_bar/appbar_image.dart';import 'package:hire_help_ff/widgets/app_bar/custom_app_bar.dart';import 'package:hire_help_ff/widgets/custom_bottom_bar.dart';import 'package:hire_help_ff/widgets/custom_button.dart';import 'package:hire_help_ff/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class RoomCleaningScreen extends StatelessWidget {TextEditingController rectangleoneController = TextEditingController();

TextEditingController currencyController = TextEditingController();

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, resizeToAvoidBottomInset: false, appBar: CustomAppBar(height: getVerticalSize(69), leadingWidth: 57, leading: AppbarImage(height: getSize(32), width: getSize(32), imagePath: ImageConstant.imgImage4, margin: getMargin(left: 25, top: 25, bottom: 12), onTap: () {onTapImagefour23(context);}), centerTitle: true, title: AppbarImage(height: getVerticalSize(69), width: getHorizontalSize(178), imagePath: ImageConstant.imgHirehelp1137x254), actions: [AppbarImage(height: getVerticalSize(32), width: getHorizontalSize(27), imagePath: ImageConstant.imgImage232x27, margin: getMargin(left: 28, top: 26, right: 28, bottom: 11))]), body: SizedBox(width: size.width, child: SingleChildScrollView(padding: getPadding(top: 6), child: Padding(padding: getPadding(right: 6, bottom: 5), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.black900), Padding(padding: getPadding(left: 12, top: 29, right: 16), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgImage1, height: getVerticalSize(36), width: getHorizontalSize(39), margin: getMargin(bottom: 6)), Padding(padding: getPadding(left: 37, top: 6), child: Text("Room Cleaning", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium24)), CustomImageView(imagePath: ImageConstant.imgInformation1, height: getSize(39), width: getSize(39), margin: getMargin(left: 27, top: 1, bottom: 2), onTap: () {onTapImgInformationone(context);})])), Padding(padding: getPadding(left: 24, top: 23, right: 12), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 1), child: Text("Room Type", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoMedium20)), Padding(padding: getPadding(bottom: 1), child: Text("Number of Rooms", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoMedium20))])), Padding(padding: getPadding(left: 29, top: 10, right: 19), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomButton(width: getHorizontalSize(89), text: "Bedroom", margin: getMargin(bottom: 1), shape: ButtonShape.Square, padding: ButtonPadding.PaddingT1, prefixWidget: Container(margin: getMargin(right: 6), child: CustomImageView(svgPath: ImageConstant.imgCheckboxWithLabel))), Container(height: getVerticalSize(22), width: getHorizontalSize(143), decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.circular(getHorizontalSize(4)), border: Border.all(color: ColorConstant.indigo900, width: getHorizontalSize(1))))])), Padding(padding: getPadding(left: 29, top: 15, right: 19), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomButton(width: getHorizontalSize(113), text: "Living Room", shape: ButtonShape.Square, prefixWidget: Container(margin: getMargin(right: 6), child: CustomImageView(svgPath: ImageConstant.imgCheckboxWithLabel))), Container(height: getVerticalSize(22), width: getHorizontalSize(143), decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.circular(getHorizontalSize(4)), border: Border.all(color: ColorConstant.indigo900, width: getHorizontalSize(1))))])), Padding(padding: getPadding(left: 29, top: 15, right: 19), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomButton(width: getHorizontalSize(123), text: "Dinning Room", shape: ButtonShape.Square, prefixWidget: Container(margin: getMargin(right: 6), child: CustomImageView(svgPath: ImageConstant.imgCheckboxWithLabel))), Container(height: getVerticalSize(22), width: getHorizontalSize(143), decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.circular(getHorizontalSize(4)), border: Border.all(color: ColorConstant.indigo900, width: getHorizontalSize(1))))])), Padding(padding: getPadding(left: 29, top: 13, right: 19), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomButton(width: getHorizontalSize(95), text: "Bathroom", margin: getMargin(top: 4), shape: ButtonShape.Square, padding: ButtonPadding.PaddingT1, prefixWidget: Container(margin: getMargin(right: 6), child: CustomImageView(svgPath: ImageConstant.imgCheckboxWithLabel))), Container(height: getVerticalSize(22), width: getHorizontalSize(143), margin: getMargin(bottom: 2), decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.circular(getHorizontalSize(4)), border: Border.all(color: ColorConstant.indigo900, width: getHorizontalSize(1))))])), Padding(padding: getPadding(left: 29, top: 12, right: 19), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomButton(width: getHorizontalSize(69), text: "Office", margin: getMargin(top: 4), shape: ButtonShape.Square, prefixWidget: Container(margin: getMargin(right: 6), child: CustomImageView(svgPath: ImageConstant.imgCheckboxWithLabel))), Container(height: getVerticalSize(22), width: getHorizontalSize(143), margin: getMargin(bottom: 2), decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.circular(getHorizontalSize(4)), border: Border.all(color: ColorConstant.indigo900, width: getHorizontalSize(1))))])), CustomButton(width: getHorizontalSize(67), text: "Other", margin: getMargin(left: 30, top: 17), shape: ButtonShape.Square, padding: ButtonPadding.PaddingT1, prefixWidget: Container(margin: getMargin(right: 6), child: CustomImageView(svgPath: ImageConstant.imgCheckboxWithLabel)), alignment: Alignment.centerLeft), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 31, top: 20), child: Text("Additional Information", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium14))), CustomTextFormField(focusNode: FocusNode(), controller: rectangleoneController, margin: getMargin(left: 31, top: 3, right: 20)), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 32, top: 12), child: Text("Offer Price", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium14))), CustomTextFormField(focusNode: FocusNode(), controller: currencyController, hintText: "Rs", margin: getMargin(left: 31, top: 3, right: 20), textInputAction: TextInputAction.done), CustomButton(text: "Add More Services", margin: getMargin(left: 33, top: 34, right: 22), variant: ButtonVariant.GradientAmber600Yellow800, fontStyle: ButtonFontStyle.LatoBlack16, onTap: () {onTapAddmore(context);}), CustomButton(text: "Next", margin: getMargin(left: 35, top: 35, right: 21), fontStyle: ButtonFontStyle.LatoBlack16, onTap: () {onTapNext(context);})])))), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}))); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homepagePage; case BottomBarEnum.Profile: return "/"; case BottomBarEnum.Services: return "/"; case BottomBarEnum.Messages: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.homepagePage: return HomepagePage(); default: return DefaultWidget();} } 
onTapImgInformationone(BuildContext context) { Navigator.pushNamed(context, AppRoutes.roomCleaningTwoScreen); } 
onTapAddmore(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homepageContainerScreen); } 
onTapNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.nextScreen); } 
onTapImagefour23(BuildContext context) { Navigator.pushNamed(context, AppRoutes.menuScreen); } 
 }