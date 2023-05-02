import 'package:flutter/material.dart';
import 'package:hire_help_ff/core/app_export.dart';
import 'package:hire_help_ff/widgets/custom_button.dart';
import 'package:hire_help_ff/widgets/custom_icon_button.dart';

class PasswordResetSuccessfulScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            all: 23,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomIconButton(
                height: 33,
                width: 33,
                variant: IconButtonVariant.FillGray30001,
                shape: IconButtonShape.RoundedBorder16,
                padding: IconButtonPadding.PaddingAll8,
                alignment: Alignment.centerRight,
                child: CustomImageView(
                  svgPath: ImageConstant.imgClose,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 42,
                ),
                child: Text(
                  "Password reset successfully",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium22Black900,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  230,
                ),
                margin: getMargin(
                  left: 41,
                  top: 27,
                  right: 42,
                ),
                child: Text(
                  "You can now login with your new password.",
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtPoppinsRegular20,
                ),
              ),
              Container(
                height: getVerticalSize(
                  60,
                ),
                width: getHorizontalSize(
                  286,
                ),
                margin: getMargin(
                  top: 46,
                  bottom: 5,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: getPadding(
                          top: 9,
                          right: 80,
                        ),
                        child: Text(
                          "Proceed",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold18,
                        ),
                      ),
                    ),
                    CustomButton(
                      width: getHorizontalSize(
                        286,
                      ),
                      text: "Save",
                      shape: ButtonShape.RoundedBorder10,
                      padding: ButtonPadding.PaddingAll12,
                      fontStyle: ButtonFontStyle.PoppinsSemiBold24,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
