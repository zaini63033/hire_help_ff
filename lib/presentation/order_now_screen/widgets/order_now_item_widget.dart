import 'package:flutter/material.dart';
import 'package:hire_help_ff/core/app_export.dart';
import 'package:hire_help_ff/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class OrderNowItemWidget extends StatelessWidget {
  OrderNowItemWidget();

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
          left: 10,
          top: 14,
          right: 10,
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
                  left: 6,
                  right: 1,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomIconButton(
                          height: 60,
                          width: 60,
                          margin: getMargin(
                            bottom: 15,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgUserBlueGray400,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgStar1,
                          height: getSize(
                            25,
                          ),
                          width: getSize(
                            25,
                          ),
                          margin: getMargin(
                            left: 14,
                            top: 30,
                            bottom: 20,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 3,
                            top: 30,
                            bottom: 21,
                          ),
                          child: Text(
                            "",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtLatoBlack20,
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            62,
                          ),
                          margin: getMargin(
                            left: 98,
                            top: 27,
                          ),
                          child: Text(
                            "",
                            maxLines: null,
                            textAlign: TextAlign.right,
                            style: AppStyle.txtLatoBlack20,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: getPadding(
                        top: 8,
                        right: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                              left: 30,
                              top: 1,
                              right: 35,
                              bottom: 1,
                            ),
                            decoration: AppDecoration.txtButton.copyWith(
                              borderRadius: BorderRadiusStyle.txtRoundedBorder7,
                            ),
                            child: Text(
                              "Accept",
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
                  left: 80,
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
                  top: 9,
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
