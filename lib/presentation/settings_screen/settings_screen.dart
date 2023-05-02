import 'package:flutter/material.dart';import 'package:hire_help_ff/core/app_export.dart';import 'package:hire_help_ff/presentation/homepage_page/homepage_page.dart';import 'package:hire_help_ff/widgets/app_bar/appbar_image.dart';import 'package:hire_help_ff/widgets/app_bar/custom_app_bar.dart';import 'package:hire_help_ff/widgets/custom_bottom_bar.dart';import 'package:hire_help_ff/widgets/custom_button.dart';
// ignore_for_file: must_be_immutable
class SettingsScreen extends StatelessWidget {GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: Container(width: getHorizontalSize(364), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(width: double.maxFinite, child: Container(padding: getPadding(top: 1, bottom: 1), decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [CustomAppBar(height: getVerticalSize(76), leadingWidth: 57, leading: AppbarImage(height: getSize(32), width: getSize(32), imagePath: ImageConstant.imgImage4, margin: getMargin(left: 25, top: 25, bottom: 12), onTap: () {onTapImagefour(context);}), centerTitle: true, title: AppbarImage(height: getVerticalSize(70), width: getHorizontalSize(178), imagePath: ImageConstant.imgHirehelp1137x254), actions: [AppbarImage(height: getVerticalSize(32), width: getHorizontalSize(27), imagePath: ImageConstant.imgImage232x27, margin: getMargin(left: 28, top: 26, right: 28, bottom: 11))]), Padding(padding: getPadding(top: 6), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.black900, endIndent: getHorizontalSize(5)))]))), Container(height: getVerticalSize(637), width: getHorizontalSize(364), child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.topCenter, child: Padding(padding: getPadding(left: 11, top: 24, right: 16), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 1), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgImage1, height: getVerticalSize(36), width: getHorizontalSize(39), margin: getMargin(bottom: 13)), Padding(padding: getPadding(left: 65, top: 1), child: Text("Settings", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium32))])), CustomButton(text: "Update Profile", margin: getMargin(left: 1, top: 17), variant: ButtonVariant.GradientAmber600Yellow800, padding: ButtonPadding.PaddingT15, fontStyle: ButtonFontStyle.LatoBlack16, suffixWidget: Container(margin: getMargin(left: 30), child: CustomImageView(svgPath: ImageConstant.imgArrowright)), onTap: () {onTapUpdateprofile(context);}), CustomButton(text: "Payment methods", margin: getMargin(top: 19), variant: ButtonVariant.GradientAmber600Yellow800, padding: ButtonPadding.PaddingT15, fontStyle: ButtonFontStyle.LatoBlack16, suffixWidget: Container(margin: getMargin(left: 30), child: CustomImageView(svgPath: ImageConstant.imgArrowright)), onTap: () {onTapPaymentmethods(context);}), Container(margin: getMargin(left: 2, top: 22), padding: getPadding(left: 15, top: 12, right: 15, bottom: 12), decoration: AppDecoration.gradientAmber600Yellow800.copyWith(borderRadius: BorderRadiusStyle.roundedBorder7), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 4), child: Text("Language", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoBlack16)), CustomImageView(svgPath: ImageConstant.imgArrowright, height: getSize(24), width: getSize(24))])), Container(margin: getMargin(left: 2, top: 21), padding: getPadding(left: 15, top: 13, right: 15, bottom: 13), decoration: AppDecoration.gradientAmber600Yellow800.copyWith(borderRadius: BorderRadiusStyle.roundedBorder7), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 2, bottom: 1), child: Text("Notifications", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoBlack16)), CustomImageView(svgPath: ImageConstant.imgArrowright, height: getSize(24), width: getSize(24))])), CustomButton(text: "Account Settings", margin: getMargin(left: 2, top: 22), variant: ButtonVariant.GradientAmber600Yellow800, padding: ButtonPadding.PaddingT15, fontStyle: ButtonFontStyle.LatoBlack16, suffixWidget: Container(margin: getMargin(left: 30), child: CustomImageView(svgPath: ImageConstant.imgArrowright)), onTap: () {onTapAccount(context);}), CustomButton(text: "Update Password", margin: getMargin(left: 1, top: 19), variant: ButtonVariant.GradientAmber600Yellow800, padding: ButtonPadding.PaddingT15, fontStyle: ButtonFontStyle.LatoBlack16, suffixWidget: Container(margin: getMargin(left: 30), child: CustomImageView(svgPath: ImageConstant.imgArrowright)), onTap: () {onTapUpdatepassword(context);})]))), Align(alignment: Alignment.center, child: Container(height: getVerticalSize(790), width: getHorizontalSize(363)))]))])), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}))); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homepagePage; case BottomBarEnum.Profile: return "/"; case BottomBarEnum.Services: return "/"; case BottomBarEnum.Messages: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.homepagePage: return HomepagePage(); default: return DefaultWidget();} } 
onTapImagefour(BuildContext context) { Navigator.pushNamed(context, AppRoutes.menuScreen); } 
onTapUpdateprofile(BuildContext context) { Navigator.pushNamed(context, AppRoutes.profileScreen); } 
onTapPaymentmethods(BuildContext context) { Navigator.pushNamed(context, AppRoutes.paymentMethodsScreen); } 
onTapAccount(BuildContext context) { Navigator.pushNamed(context, AppRoutes.accountSettingsScreen); } 
onTapUpdatepassword(BuildContext context) { Navigator.pushNamed(context, AppRoutes.updatePasswordScreen); } 
 }
