import 'package:flutter/material.dart';
import 'package:hire_help_ff/core/app_export.dart';

// ignore: must_be_immutable
class CarServicesItemWidget extends StatelessWidget {
  CarServicesItemWidget({this.onTapCard});

  VoidCallback? onTapCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapCard?.call();
      },
      child: Container(
        padding: getPadding(
          left: 28,
          top: 13,
          right: 28,
          bottom: 13,
        ),
        decoration: AppDecoration.outline.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgCarservice1,
              height: getSize(
                64,
              ),
              width: getSize(
                64,
              ),
              margin: getMargin(
                top: 14,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 12,
              ),
              child: Text(
                "",
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
