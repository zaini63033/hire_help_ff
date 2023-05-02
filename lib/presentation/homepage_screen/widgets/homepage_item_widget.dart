import 'package:flutter/material.dart';
import 'package:hire_help_v2/core/app_export.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore: must_be_immutable
class HomepageItemWidget extends StatelessWidget {
  HomepageItemWidget();

  @override
  Widget build(BuildContext context) {
    return OutlineGradientButton(
      padding: EdgeInsets.only(
        left: getHorizontalSize(
          2,
        ),
        top: getVerticalSize(
          2,
        ),
        right: getHorizontalSize(
          2,
        ),
        bottom: getVerticalSize(
          2,
        ),
      ),
      strokeWidth: getHorizontalSize(
        2,
      ),
      gradient: LinearGradient(
        begin: Alignment(
          0.5,
          0,
        ),
        end: Alignment(
          0.5,
          1,
        ),
        colors: [
          ColorConstant.blueGray900,
          ColorConstant.indigo900,
          ColorConstant.teal300,
        ],
      ),
      corners: Corners(
        topLeft: Radius.circular(
          10,
        ),
        topRight: Radius.circular(
          10,
        ),
        bottomLeft: Radius.circular(
          10,
        ),
        bottomRight: Radius.circular(
          10,
        ),
      ),
      child: Container(
        padding: getPadding(
          left: 18,
          top: 16,
          right: 18,
          bottom: 16,
        ),
        decoration: AppDecoration.outline.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgCarservice1,
              height: getSize(
                55,
              ),
              width: getSize(
                55,
              ),
              alignment: Alignment.center,
              margin: getMargin(
                top: 11,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 9,
              ),
              child: Text(
                "Car Services",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtLatoMedium15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
