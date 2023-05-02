import 'package:flutter/material.dart';import 'package:hire_help_ff/core/app_export.dart';import 'package:hire_help_ff/presentation/homepage_page/homepage_page.dart';import 'package:hire_help_ff/widgets/app_bar/appbar_image.dart';import 'package:hire_help_ff/widgets/app_bar/custom_app_bar.dart';import 'package:hire_help_ff/widgets/custom_bottom_bar.dart';import 'package:hire_help_ff/widgets/custom_button.dart';
// ignore_for_file: must_be_immutable
class NextScreen extends StatelessWidget {GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: Container(width: getHorizontalSize(364), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(width: double.maxFinite, child: Container(padding: getPadding(top: 1, bottom: 1), decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [CustomAppBar(height: getVerticalSize(76), leadingWidth: 57, leading: AppbarImage(height: getSize(32), width: getSize(32), imagePath: ImageConstant.imgImage4, margin: getMargin(left: 25, top: 25, bottom: 12), onTap: () {onTapImagefour13(context);}), centerTitle: true, title: AppbarImage(height: getVerticalSize(70), width: getHorizontalSize(178), imagePath: ImageConstant.imgHirehelp1137x254), actions: [AppbarImage(height: getVerticalSize(32), width: getHorizontalSize(27), imagePath: ImageConstant.imgImage232x27, margin: getMargin(left: 28, top: 26, right: 28, bottom: 11))]), Padding(padding: getPadding(top: 6), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.black900, endIndent: getHorizontalSize(5)))]))), Container(height: getVerticalSize(637), width: getHorizontalSize(364), child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.topLeft, child: Padding(padding: getPadding(left: 13, top: 24, right: 26, bottom: 77), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgImage1, height: getVerticalSize(36), width: getHorizontalSize(39), alignment: Alignment.centerLeft), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 21, top: 18), child: Text("Location", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium14))), Align(alignment: Alignment.centerRight, child: Container(width: getHorizontalSize(306), margin: getMargin(left: 19, top: 3), padding: getPadding(left: 13, top: 11, right: 13, bottom: 11), decoration: AppDecoration.outlineIndigo900.copyWith(borderRadius: BorderRadiusStyle.roundedBorder7), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgLocation1, height: getVerticalSize(21), width: getHorizontalSize(15), onTap: () {onTapImgLocationone(context);})]))), Spacer(), CustomButton(text: "Order Now", margin: getMargin(left: 18, right: 5), fontStyle: ButtonFontStyle.LatoBlack16, onTap: () {onTapOrdernow(context);}), CustomButton(text: "Schedule", margin: getMargin(left: 19, top: 34, right: 4), fontStyle: ButtonFontStyle.LatoBlack16, onTap: () {onTapSchedule(context);}), CustomButton(text: "Subscribe", margin: getMargin(left: 19, top: 34, right: 4), fontStyle: ButtonFontStyle.LatoBlack16, onTap: () {onTapSubscribe(context);})]))), Align(alignment: Alignment.center, child: Container(height: getVerticalSize(790), width: getHorizontalSize(363)))]))])), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}))); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homepagePage; case BottomBarEnum.Profile: return "/"; case BottomBarEnum.Services: return "/"; case BottomBarEnum.Messages: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.homepagePage: return HomepagePage(); default: return DefaultWidget();} } 
onTapImagefour13(BuildContext context) { Navigator.pushNamed(context, AppRoutes.menuScreen); } 
onTapImgLocationone(BuildContext context) { Navigator.pushNamed(context, AppRoutes.mapScreen); } 
onTapOrdernow(BuildContext context) { Navigator.pushNamed(context, AppRoutes.orderNowScreen); } 
onTapSchedule(BuildContext context) { Navigator.pushNamed(context, AppRoutes.scheduleScreen); } 
onTapSubscribe(BuildContext context) { Navigator.pushNamed(context, AppRoutes.subscribeScreen); } 
 }
