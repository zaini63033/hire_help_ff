import 'package:flutter/material.dart';
import 'package:hire_help_ff/core/app_export.dart';
import 'package:hire_help_ff/widgets/app_bar/appbar_image.dart';
import 'package:hire_help_ff/widgets/app_bar/appbar_title.dart';
import 'package:hire_help_ff/widgets/app_bar/custom_app_bar.dart';

class InstallationtwoScreen extends StatelessWidget {
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
            text: "Installation",
            margin: getMargin(
              left: 46,
              top: 40,
              bottom: 13,
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
            top: 9,
            right: 36,
            bottom: 36,
          ),
          child: Text(
            "Device may be taken by the worker to his workshop, if required\n2 days would be required to get it repaired.\nWorker will reinstall it and will check whether it is properly functional.",
            maxLines: null,
            textAlign: TextAlign.left,
            style: AppStyle.txtLatoMedium20Indigo900,
          ),
        ),
      ),
    );
  }
}
