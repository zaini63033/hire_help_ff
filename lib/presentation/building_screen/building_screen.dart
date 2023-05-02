import 'package:flutter/material.dart';import 'package:hire_help_ff/core/app_export.dart';import 'package:hire_help_ff/presentation/homepage_page/homepage_page.dart';import 'package:hire_help_ff/widgets/app_bar/appbar_image.dart';import 'package:hire_help_ff/widgets/app_bar/custom_app_bar.dart';import 'package:hire_help_ff/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class BuildingScreen extends StatelessWidget {GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: Container(width: getHorizontalSize(364), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(width: double.maxFinite, child: Container(padding: getPadding(top: 1, bottom: 1), decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [CustomAppBar(height: getVerticalSize(78), leadingWidth: 57, leading: AppbarImage(height: getVerticalSize(33), width: getHorizontalSize(32), imagePath: ImageConstant.imgImage4, margin: getMargin(left: 25, top: 26, bottom: 12), onTap: () {onTapImagefour28(context);}), centerTitle: true, title: AppbarImage(height: getVerticalSize(72), width: getHorizontalSize(178), imagePath: ImageConstant.imgHirehelp1137x254), actions: [AppbarImage(height: getVerticalSize(33), width: getHorizontalSize(27), imagePath: ImageConstant.imgImage232x27, margin: getMargin(left: 28, top: 27, right: 28, bottom: 11))]), Padding(padding: getPadding(top: 6), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.black900, endIndent: getHorizontalSize(5)))]))), Container(height: getVerticalSize(634), width: getHorizontalSize(364), child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.topLeft, child: Padding(padding: getPadding(left: 13, top: 22), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgImage1, height: getVerticalSize(36), width: getHorizontalSize(39), margin: getMargin(bottom: 6)), Padding(padding: getPadding(left: 81, top: 6), child: Text("Building", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium24))]), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 26, top: 34), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [GestureDetector(onTap: () {onTapColumntoolsone(context);}, child: Container(padding: getPadding(left: 28, top: 9, right: 28, bottom: 9), decoration: AppDecoration.outline.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [CustomImageView(imagePath: ImageConstant.imgTools1, height: getSize(64), width: getSize(64), margin: getMargin(top: 17)), Padding(padding: getPadding(top: 12), child: Text("Repair", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoMedium17))]))), GestureDetector(onTap: () {onTapColumnpracticeo(context);}, child: Container(padding: getPadding(left: 24, top: 11, right: 24, bottom: 11), decoration: AppDecoration.outline.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [CustomImageView(imagePath: ImageConstant.imgPractice1, height: getSize(64), width: getSize(64), margin: getMargin(top: 15)), Padding(padding: getPadding(top: 11), child: Text("Assemble", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoMedium17))])))])))]))), Align(alignment: Alignment.topCenter, child: Container(height: getVerticalSize(790), width: getHorizontalSize(363)))]))])), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}))); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homepagePage; case BottomBarEnum.Profile: return "/"; case BottomBarEnum.Services: return "/"; case BottomBarEnum.Messages: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.homepagePage: return HomepagePage(); default: return DefaultWidget();} } 
onTapImagefour28(BuildContext context) { Navigator.pushNamed(context, AppRoutes.menuScreen); } 
onTapColumntoolsone(BuildContext context) { Navigator.pushNamed(context, AppRoutes.buildingRepairScreen); } 
onTapColumnpracticeo(BuildContext context) { Navigator.pushNamed(context, AppRoutes.assembleScreen); } 
 }