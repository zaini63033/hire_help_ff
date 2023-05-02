import 'package:flutter/material.dart';
import 'package:hire_help_ff/core/app_export.dart';
import 'package:hire_help_ff/widgets/app_bar/appbar_image.dart';
import 'package:hire_help_ff/widgets/app_bar/appbar_title.dart';
import 'package:hire_help_ff/widgets/app_bar/custom_app_bar.dart';

class KitchenTwoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            105,
          ),
          title: AppbarTitle(
            text: "Kitchen Cleaning",
            margin: getMargin(
              left: 24,
              top: 1,
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
              ),
            ),
          ],
          styleType: Style.bgFillWhiteA700,
        ),
        body: Container(
          width: getHorizontalSize(
            314,
          ),
          margin: getMargin(
            left: 30,
            top: 11,
            right: 15,
          ),
          child: Text(
            "The kitchen cleaning services include:\nDusting and wiping down all surfaces, including countertops, tables, and chairs.\nMopping or sweeping the kitchen floor and cleaning any spills or stains.\nCleaning and sanitizing sinks, faucets, and drains.\nCleaning the exterior and interior of appliances, such as stovetops, ovens, refrigerators, and dishwashers.\nWiping down cabinets, drawers, and pantry shelves.\nCleaning the stovetop and range hood, including the filters.\nCleaning the backsplash and wall areas behind and around the stove.\nCleaning any dishes or cookware left in the sink or on the counter.\nServices and other cleaning material will be provided by the worker and material charges included.\nWorker will be responsible to inform the customer of any damaged goods before he starts work.\n Worker will update the customer after the job is done.\nWorker will not be responsible for any damage or stain after he leaves the premises.",
            maxLines: null,
            textAlign: TextAlign.left,
            style: AppStyle.txtLatoMedium20Indigo900,
          ),
        ),
      ),
    );
  }
}
