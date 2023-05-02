import 'package:flutter/material.dart';
import 'package:hire_help_ff/core/app_export.dart';
import 'package:hire_help_ff/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SubscribetwoItemWidget extends StatelessWidget {
  SubscribetwoItemWidget();

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Container(
        height: getVerticalSize(
          156,
        ),
        width: getHorizontalSize(
          317,
        ),
        padding: getPadding(
          left: 12,
          top: 14,
          right: 12,
          bottom: 14,
        ),
        decoration: AppDecoration.gradientAmber300Yellow80001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: getPadding(
                  left: 3,
                  right: 3,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomIconButton(
                          height: 60,
                          width: 60,
                          child: CustomImageView(
                            svgPath: ImageConstant.imgUserBlueGray400,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgStar15,
                          height: getSize(
                            25,
                          ),
                          width: getSize(
                            25,
                          ),
                          margin: getMargin(
                            left: 14,
                            top: 30,
                            bottom: 5,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 3,
                            top: 30,
                            bottom: 5,
                          ),
                          child: Text(
                            "",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtLatoBlack20,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: getPadding(
                        top: 24,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: getHorizontalSize(
                              129,
                            ),
                            padding: getPadding(
                              left: 30,
                              top: 2,
                              right: 32,
                              bottom: 2,
                            ),
                            decoration: AppDecoration.txtFillGray400.copyWith(
                              borderRadius: BorderRadiusStyle.txtRoundedBorder7,
                            ),
                            child: Text(
                              "Decline",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold16,
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              129,
                            ),
                            margin: getMargin(
                              left: 25,
                            ),
                            padding: getPadding(
                              left: 23,
                              top: 2,
                              right: 23,
                              bottom: 2,
                            ),
                            decoration: AppDecoration.txtButton.copyWith(
                              borderRadius: BorderRadiusStyle.txtRoundedBorder7,
                            ),
                            child: Text(
                              "Subscribe",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold16WhiteA700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: getPadding(
                  left: 77,
                  top: 9,
                ),
                child: Text(
                  "Name",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtLatoBlack25,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: getPadding(
                  top: 33,
                ),
                child: Text(
                  "",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtLatoBlack25Indigo900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
