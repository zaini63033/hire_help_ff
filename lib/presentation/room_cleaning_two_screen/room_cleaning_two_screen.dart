import 'package:flutter/material.dart';
import 'package:hire_help_ff/core/app_export.dart';
import 'package:hire_help_ff/widgets/app_bar/appbar_image.dart';
import 'package:hire_help_ff/widgets/app_bar/appbar_title.dart';
import 'package:hire_help_ff/widgets/app_bar/custom_app_bar.dart';

class RoomCleaningTwoScreen extends StatelessWidget {
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
            text: "Room Cleaning",
            margin: getMargin(
              left: 24,
              top: 45,
              bottom: 8,
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
            287,
          ),
          margin: getMargin(
            left: 43,
            top: 2,
            right: 28,
          ),
          child: Text(
            "The Room cleaning services include:\nDusting\nMopping\nCleaning Windows\nMaking the bed in Bedroom\nOrganizing and arranging objects\nServices and other cleaning material will be provided by the worker and material charges included.\nWorker will be responsible to inform the customer of any damaged goods before he starts work.\nIt shall be the responsibility of the customer to provide electricity connection and water supply to the worker.\nWorker will update the customer after the job is done.\nWorker will not be responsible for any damage or stain after he leaves the premises.",
            maxLines: null,
            textAlign: TextAlign.left,
            style: AppStyle.txtLatoMedium20Indigo900,
          ),
        ),
      ),
    );
  }
}
