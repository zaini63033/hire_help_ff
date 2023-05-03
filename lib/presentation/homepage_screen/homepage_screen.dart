import '../homepage_screen/widgets/homepage_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hire_help_v2/core/app_export.dart';
import 'package:hire_help_v2/widgets/app_bar/appbar_image.dart';
import 'package:hire_help_v2/widgets/app_bar/custom_app_bar.dart';
import 'package:hire_help_v2/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomepageScreen extends StatelessWidget {
  TextEditingController inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(74),
                leadingWidth: 57,
                leading: AppbarImage(
                    height: getSize(32),
                    width: getSize(32),
                    imagePath: ImageConstant.imgImage4,
                    margin: getMargin(left: 25, top: 25, bottom: 12),
                    onTap: () => onTapImageFour3(context)),
                centerTitle: true,
                title: AppbarImage(
                    height: getVerticalSize(69),
                    width: getHorizontalSize(178),
                    imagePath: ImageConstant.imgHirehelp1137x254),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(32),
                      width: getHorizontalSize(27),
                      imagePath: ImageConstant.imgImage232x27,
                      margin:
                          getMargin(left: 28, top: 26, right: 28, bottom: 11))
                ]),
            body: SingleChildScrollView(
              child: Container(
                  width: getHorizontalSize(364),
                  padding: getPadding(top: 6, bottom: 6),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Divider(
                            height: getVerticalSize(1),
                            thickness: getVerticalSize(1),
                            color: ColorConstant.indigo90003,
                            endIndent: getHorizontalSize(6)),
                        CustomSearchView(
                            focusNode: FocusNode(),
                            controller: inputController,
                            hintText: "Search Services",
                            margin: getMargin(left: 16, top: 24, right: 21),
                            prefix: Container(
                                margin: getMargin(
                                    left: 16, top: 13, right: 15, bottom: 13),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgSearchWhiteA700)),
                            prefixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(46)),
                            suffix: Padding(
                                padding: EdgeInsets.only(
                                    right: getHorizontalSize(15)),
                                child: IconButton(
                                    onPressed: () {
                                      inputController.clear();
                                    },
                                    icon: Icon(Icons.clear,
                                        color: Colors.grey.shade600)))),
                        Padding(
                            padding: getPadding(left: 39, top: 35, right: 41),
                            child: GridView.builder(
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        mainAxisExtent: getVerticalSize(136),
                                        crossAxisCount: 2,
                                        mainAxisSpacing: getHorizontalSize(41),
                                        crossAxisSpacing:
                                            getHorizontalSize(41)),
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: 6,
                                itemBuilder: (context, index) {
                                  return HomepageItemWidget();
                                })),
                        Padding(
                            padding: getPadding(top: 64),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.indigo90003)),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                                padding: getPadding(
                                    left: 25, top: 11, right: 6, bottom: 8),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                          padding: getPadding(bottom: 1),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgHome,
                                                    height: getSize(24),
                                                    width: getSize(24)),
                                                Padding(
                                                    padding: getPadding(top: 5),
                                                    child: Text("Home",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtLatoBlack12))
                                              ])),
                                      Spacer(flex: 35),
                                      GestureDetector(
                                          onTap: () {
                                            onTapProfil(context);
                                          },
                                          child: Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgUserBlueGray800,
                                                        height: getSize(24),
                                                        width: getSize(24)),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 5),
                                                        child: Text("Profile",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtLatoBlack12))
                                                  ]))),
                                      Spacer(flex: 32),
                                      Padding(
                                          padding: getPadding(top: 2),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .img001shoppingcart,
                                                    height: getVerticalSize(26),
                                                    width:
                                                        getHorizontalSize(28),
                                                    margin: getMargin(left: 7)),
                                                Text("Services",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style:
                                                        AppStyle.txtLatoBlack12)
                                              ])),
                                      Spacer(flex: 32),
                                      Padding(
                                          padding: getPadding(top: 3),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgImage5,
                                                    height: getSize(24),
                                                    width: getSize(24)),
                                                Padding(
                                                    padding: getPadding(top: 3),
                                                    child: Text("Messages",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtLatoBlack12))
                                              ]))
                                    ])))
                      ])),
            )));
  }

  onTapProfil(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  onTapImageFour3(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menuScreen);
  }
}
