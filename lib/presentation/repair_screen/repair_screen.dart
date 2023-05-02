import 'package:flutter/material.dart';import 'package:hire_help_ff/core/app_export.dart';import 'package:hire_help_ff/presentation/homepage_page/homepage_page.dart';import 'package:hire_help_ff/widgets/app_bar/appbar_image.dart';import 'package:hire_help_ff/widgets/app_bar/custom_app_bar.dart';import 'package:hire_help_ff/widgets/custom_bottom_bar.dart';import 'package:hire_help_ff/widgets/custom_button.dart';import 'package:hire_help_ff/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class RepairScreen extends StatelessWidget {TextEditingController rectangleoneController = TextEditingController();

TextEditingController currencyController = TextEditingController();

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, resizeToAvoidBottomInset: false, appBar: CustomAppBar(height: getVerticalSize(69), leadingWidth: 57, leading: AppbarImage(height: getSize(32), width: getSize(32), imagePath: ImageConstant.imgImage4, margin: getMargin(left: 25, top: 25, bottom: 12), onTap: () {onTapImagefour31(context);}), centerTitle: true, title: AppbarImage(height: getVerticalSize(69), width: getHorizontalSize(178), imagePath: ImageConstant.imgHirehelp1137x254), actions: [AppbarImage(height: getVerticalSize(32), width: getHorizontalSize(27), imagePath: ImageConstant.imgImage232x27, margin: getMargin(left: 28, top: 26, right: 28, bottom: 11))]), body: SizedBox(width: size.width, child: SingleChildScrollView(padding: getPadding(top: 6), child: Padding(padding: getPadding(right: 6, bottom: 5), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.black900), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 12, top: 29, right: 16), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgImage1, height: getVerticalSize(36), width: getHorizontalSize(39), margin: getMargin(bottom: 4)), Spacer(flex: 53), Padding(padding: getPadding(top: 8, bottom: 2), child: Text("Repair", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoMedium24)), Spacer(flex: 46), CustomImageView(imagePath: ImageConstant.imgInformation1, height: getSize(39), width: getSize(39), margin: getMargin(top: 1))]))), Padding(padding: getPadding(left: 40, top: 22), child: Text("Services", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoMedium20)), CustomButton(width: getHorizontalSize(240), text: "Malfunctioning Circuit Breaker", margin: getMargin(left: 29, top: 15), shape: ButtonShape.Square, prefixWidget: Container(margin: getMargin(right: 6), child: CustomImageView(svgPath: ImageConstant.imgCheckboxWithLabel))), CustomButton(width: getHorizontalSize(194), text: "Faulty Electrical Outlets", margin: getMargin(left: 29, top: 15), shape: ButtonShape.Square, prefixWidget: Container(margin: getMargin(right: 6), child: CustomImageView(svgPath: ImageConstant.imgCheckboxWithLabel))), CustomButton(width: getHorizontalSize(212), text: "Damaged Electrical Wiring", margin: getMargin(left: 29, top: 16), shape: ButtonShape.Square, prefixWidget: Container(margin: getMargin(right: 6), child: CustomImageView(svgPath: ImageConstant.imgCheckboxWithLabel))), CustomButton(width: getHorizontalSize(106), text: "UPS Repair", margin: getMargin(left: 29, top: 16), shape: ButtonShape.Square, prefixWidget: Container(margin: getMargin(right: 6), child: CustomImageView(svgPath: ImageConstant.imgCheckboxWithLabel))), CustomButton(width: getHorizontalSize(221), text: "Repairing Electrical Devices", margin: getMargin(left: 29, top: 16), shape: ButtonShape.Square, prefixWidget: Container(margin: getMargin(right: 6), child: CustomImageView(svgPath: ImageConstant.imgCheckboxWithLabel)), onTap: () {onTapRepairing(context);}), CustomButton(width: getHorizontalSize(67), text: "Other", margin: getMargin(left: 29, top: 16), shape: ButtonShape.Square, padding: ButtonPadding.PaddingT1, prefixWidget: Container(margin: getMargin(right: 6), child: CustomImageView(svgPath: ImageConstant.imgCheckboxWithLabel))), Padding(padding: getPadding(left: 29, top: 17), child: Text("Additional Information or Specifications", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium14)), CustomTextFormField(focusNode: FocusNode(), controller: rectangleoneController, margin: getMargin(left: 29, top: 1, right: 22), alignment: Alignment.center), Padding(padding: getPadding(left: 30, top: 12), child: Text("Offer Price", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium14)), CustomTextFormField(focusNode: FocusNode(), controller: currencyController, hintText: "Rs", margin: getMargin(left: 30, top: 3, right: 21), textInputAction: TextInputAction.done, alignment: Alignment.center), CustomButton(text: "Add More Services", margin: getMargin(left: 31, top: 83, right: 24), variant: ButtonVariant.GradientAmber600Yellow800, fontStyle: ButtonFontStyle.LatoBlack16, onTap: () {onTapAddmore(context);}, alignment: Alignment.center), CustomButton(text: "Next", margin: getMargin(left: 34, top: 35, right: 22), fontStyle: ButtonFontStyle.LatoBlack16, onTap: () {onTapNext(context);}, alignment: Alignment.center)])))), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}))); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homepagePage; case BottomBarEnum.Profile: return "/"; case BottomBarEnum.Services: return "/"; case BottomBarEnum.Messages: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.homepagePage: return HomepagePage(); default: return DefaultWidget();} } 
onTapRepairing(BuildContext context) { Navigator.pushNamed(context, AppRoutes.repairTwoScreen); } 
onTapAddmore(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homepageContainerScreen); } 
onTapNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.nextScreen); } 
onTapImagefour31(BuildContext context) { Navigator.pushNamed(context, AppRoutes.menuScreen); } 
 }
