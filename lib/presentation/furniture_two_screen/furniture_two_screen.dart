import 'package:flutter/material.dart';
import 'package:hire_help_ff/core/app_export.dart';
import 'package:hire_help_ff/widgets/app_bar/appbar_image.dart';
import 'package:hire_help_ff/widgets/app_bar/appbar_title.dart';
import 'package:hire_help_ff/widgets/app_bar/custom_app_bar.dart';

class FurnitureTwoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            105,
          ),
          centerTitle: true,
          title: Padding(
            padding: getPadding(
              top: 23,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppbarImage(
                  height: getSize(
                    33,
                  ),
                  width: getSize(
                    33,
                  ),
                  svgPath: ImageConstant.imgCloseGray30001,
                  margin: getMargin(
                    left: 280,
                  ),
                ),
                AppbarTitle(
                  text: "Furniture Cleaning",
                  margin: getMargin(
                    top: 1,
                    right: 15,
                  ),
                ),
              ],
            ),
          ),
          styleType: Style.bgFillWhiteA700,
        ),
        body: Container(
          width: getHorizontalSize(
            290,
          ),
          margin: getMargin(
            left: 40,
            top: 11,
            right: 29,
          ),
          child: Text(
            "Services and other cleaning material will be provided by the worker and material charges included.\nWorker will be responsible to inform the customer of any damaged goods before he starts work.\nIt shall be the responsibility of the customer to provide electricity connection and water supply to the worker.\nIt will also be the customer's responsibility to provide a place for cleaning.\nThe worker will remove the dust from the furniture.\nWorkers will be responsible for using chemicals and liquid with a hand pad and duster for scrubbing.\nThe worker will use the vacuum machine for drying.\nWorker will update the customer after the job is done.\nWorker will not be responsible for any damage or stain after he leaves the premises.",
            maxLines: null,
            textAlign: TextAlign.left,
            style: AppStyle.txtLatoMedium20Indigo900,
          ),
        ),
      ),
    );
  }
}
