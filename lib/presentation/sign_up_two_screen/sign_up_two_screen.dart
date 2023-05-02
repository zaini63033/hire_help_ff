import 'package:flutter/material.dart';import 'package:hire_help_ff/core/app_export.dart';class SignUpTwoScreen extends StatelessWidget {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: Container(width: double.maxFinite, padding: getPadding(left: 19, top: 22, right: 19, bottom: 22), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgImage136x39, height: getVerticalSize(36), width: getHorizontalSize(39)), Align(alignment: Alignment.center, child: Padding(padding: getPadding(top: 42), child: Text("Provide Your Information", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium20))), Padding(padding: getPadding(left: 14, top: 36), child: Text("Number", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium14)), Container(width: getHorizontalSize(305), margin: getMargin(left: 5, top: 3, right: 10), padding: getPadding(all: 17), decoration: AppDecoration.outlineIndigo900.copyWith(borderRadius: BorderRadiusStyle.roundedBorder7), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgIcons8phone50, height: getSize(24), width: getSize(24), margin: getMargin(top: 1))])), Padding(padding: getPadding(left: 14, top: 14), child: Text("Gender", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium14)), Container(width: getHorizontalSize(305), margin: getMargin(left: 5, top: 3, right: 10), padding: getPadding(all: 18), decoration: AppDecoration.outlineIndigo900.copyWith(borderRadius: BorderRadiusStyle.roundedBorder7), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgImage2, height: getSize(24), width: getSize(24))])), Padding(padding: getPadding(left: 13, top: 14), child: Text("Address", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium14)), Container(height: getVerticalSize(61), width: getHorizontalSize(305), margin: getMargin(left: 6, top: 6), decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.circular(getHorizontalSize(7)), border: Border.all(color: ColorConstant.indigo900, width: getHorizontalSize(1)))), Padding(padding: getPadding(left: 21, top: 15), child: Text("City", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium14)), Container(height: getVerticalSize(61), width: getHorizontalSize(305), margin: getMargin(left: 8, top: 2), decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.circular(getHorizontalSize(7)), border: Border.all(color: ColorConstant.indigo900, width: getHorizontalSize(1)))), Align(alignment: Alignment.center, child: GestureDetector(onTap: () {onTapLoginbutton(context);}, child: Container(margin: getMargin(left: 27, top: 81, right: 25, bottom: 5), padding: getPadding(left: 14, top: 7, right: 14, bottom: 7), decoration: AppDecoration.button.copyWith(borderRadius: BorderRadiusStyle.roundedBorder7), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: getPadding(left: 16, top: 4, bottom: 5), child: Text("Save and Next", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsSemiBold15)), CustomImageView(imagePath: ImageConstant.imgImage131x31, height: getSize(31), width: getSize(31), margin: getMargin(bottom: 1))]))))])))); } 
onTapLoginbutton(BuildContext context) { Navigator.pushNamed(context, AppRoutes.signUpThreeScreen); } 
 }
