import 'package:flutter/material.dart';
import 'package:hire_help_ff/core/app_export.dart';
import 'package:hire_help_ff/widgets/app_bar/appbar_image.dart';
import 'package:hire_help_ff/widgets/app_bar/appbar_title.dart';
import 'package:hire_help_ff/widgets/app_bar/custom_app_bar.dart';

class AssembletwoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            102,
          ),
          title: AppbarTitle(
            text: "Assemble",
            margin: getMargin(
              left: 46,
              top: 41,
              bottom: 12,
            ),
          ),
          actions: [
            AppbarImage(
              height: getSize(
                33,
              ),
              width: getSize(
                33,
              ),
              svgPath: ImageConstant.imgCloseGray30001,
              margin: getMargin(
                left: 23,
                top: 23,
                right: 23,
                bottom: 46,
              ),
            ),
          ],
          styleType: Style.bgFillWhiteA700,
        ),
        body: Container(
          width: getHorizontalSize(
            284,
          ),
          margin: getMargin(
            left: 39,
            top: 14,
            right: 35,
            bottom: 30,
          ),
          child: Text(
            "Customer to provide necessary replacement parts/materials for assembling.\nIt shall be the responsibility of the customer to provide electricity connection and water supply to the worker.\nIt will also be the customer's responsibility to provide a place for assembling.\nAfter job completion, the customer will check the product functionality and confirm that the task is completed.",
            maxLines: null,
            textAlign: TextAlign.left,
            style: AppStyle.txtLatoMedium20Indigo900,
          ),
        ),
      ),
    );
  }
}
