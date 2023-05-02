import 'package:flutter/material.dart';
import 'package:hire_help_ff/core/app_export.dart';
import 'package:hire_help_ff/widgets/app_bar/appbar_image.dart';
import 'package:hire_help_ff/widgets/app_bar/appbar_title.dart';
import 'package:hire_help_ff/widgets/app_bar/custom_app_bar.dart';

class GeneralServicestwoScreen extends StatelessWidget {
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
            text: "General Services",
            margin: getMargin(
              left: 24,
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
                left: 10,
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
            299,
          ),
          child: Text(
            "Washing and drying will be processed manually. The detailer will spray and wipe down the body of the car with specialized products. This includes hand washing the rims, door handles, and glass.\nWorker will process compound polishing.\nTo give the car a glossy shine and to add a protective layer to the car’s paint, a sealant will be applied. In some cases, wax can be used.\nSeats, carpets and mats, headliner, rear cargo area, and trunk will be vacuumed to clean debris.\nScrubbing and brushing, this is done to remove stains on floor carpets and mats\nCleaning the windshield and windows. \nA leather cleaner and soap are used to clean any leather parts in the vehicle. \nDetailer may spray a deodorant into the interior of a car for good fragrance and cleaning\nIf the customer wants to use a chemical of his choice, it will be the customer's responsibility to provide the chemical.\nIt will be the customer's responsibility to provide appropriate space for general servicing of the vehicle۔\nIt will be the responsibility of the customer to provide electricity connection and water connection for general servicing of the vehicle.\nIt is the customer's responsibility to remove their valuables and documents from the vehicle before the worker starts work.\nAfter the job is done, the worker will ask the customer to check his vehicle. The customer will check for his complete satisfaction and will mark “complete job” in the app.\nNote: Engines of Hybrid vehicles Can only be washed on Customer demand and  Responsibility.",
            maxLines: null,
            textAlign: TextAlign.left,
            style: AppStyle.txtLatoMedium20Indigo900,
          ),
        ),
      ),
    );
  }
}
