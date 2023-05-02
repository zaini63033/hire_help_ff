import 'package:flutter/material.dart';
import 'package:hire_help_ff/core/app_export.dart';
import 'package:hire_help_ff/widgets/custom_button.dart';
import 'package:hire_help_ff/widgets/custom_text_form_field.dart';

class ResetPasswordScreen extends StatelessWidget {
  TextEditingController groupfortysevenController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 19,
            top: 22,
            right: 19,
            bottom: 22,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage1,
                height: getVerticalSize(
                  36,
                ),
                width: getHorizontalSize(
                  39,
                ),
                alignment: Alignment.centerLeft,
              ),
              Padding(
                padding: getPadding(
                  top: 21,
                ),
                child: Text(
                  "Reset password",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium24Black900,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 10,
                    top: 30,
                  ),
                  child: Text(
                    "New Password",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium16,
                  ),
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgPasswordholder,
                height: getVerticalSize(
                  60,
                ),
                width: getHorizontalSize(
                  296,
                ),
                margin: getMargin(
                  top: 5,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 9,
                    top: 41,
                  ),
                  child: Text(
                    "Confirm New Password",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium16,
                  ),
                ),
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                controller: groupfortysevenController,
                margin: getMargin(
                  left: 10,
                  top: 6,
                  right: 16,
                ),
                variant: TextFormFieldVariant.OutlineIndigo900_1,
                shape: TextFormFieldShape.RoundedBorder10,
                textInputAction: TextInputAction.done,
                prefix: Container(
                  padding: getPadding(
                    top: 1,
                    right: 5,
                    bottom: 2,
                  ),
                  margin: getMargin(
                    left: 15,
                    top: 17,
                    right: 15,
                    bottom: 17,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgLock,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    60,
                  ),
                ),
                suffix: Container(
                  margin: getMargin(
                    left: 30,
                    top: 18,
                    right: 16,
                    bottom: 17,
                  ),
                  child: CustomImageView(
                    svgPath:
                        ImageConstant.imgAntdesigneyeinvisibleoutlinedGray800,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    60,
                  ),
                ),
              ),
              Spacer(),
              CustomButton(
                text: "Save",
                margin: getMargin(
                  left: 19,
                  right: 17,
                  bottom: 42,
                ),
                shape: ButtonShape.RoundedBorder10,
                padding: ButtonPadding.PaddingAll12,
                fontStyle: ButtonFontStyle.PoppinsSemiBold24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
