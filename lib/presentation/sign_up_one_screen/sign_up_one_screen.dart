import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hire_help_v2/core/app_export.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../sign_up_two_screen/sign_up_two_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignUpOneScreen extends StatefulWidget {
  @override
  State<SignUpOneScreen> createState() => _SignUpOneScreenState();
}

class _SignUpOneScreenState extends State<SignUpOneScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  void showToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  bool isEmailValid(String email) {
    String pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    RegExp regExp = new RegExp(pattern);
    return regExp.hasMatch(email);
  }

  bool isPasswordValid(String password) {
    if (password.isEmpty) {
      return false;
    }
    // Password should be at least 8 characters long
    if (password.length < 6) {
      return false;
    }
    return true;
  }

  void _submitDataToFirebase() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: _emailController.text, password: _passwordController.text);

      // show a success message
      showToast('Data saved successfully');

      // navigate to the next screen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SignUpTwoScreen()),
      );
    } catch (e) {
      // show an error message
      showToast('Error: ${e.toString()}');
    }
  }

  void saveData() {
    if (_validateName() &&
        _validateEmail() &&
        _validatePassword() &&
        _validateConfirmPassword()) {
      _submitDataToFirebase();
    }
  }

  bool _validateName() {
    if (_nameController.text.isEmpty) {
      showToast("Please enter your name");
      return false;
    }
    return true;
  }

// function to validate email
  bool _validateEmail() {
    if (_emailController.text.isEmpty) {
      showToast("Please enter your email");
      return false;
    }
    if (!isEmailValid(_emailController.text)) {
      showToast("Please enter a valid email");
      return false;
    }
    return true;
  }

// function to validate password
  bool _validatePassword() {
    if (_passwordController.text.isEmpty) {
      showToast("Please enter your password");
      return false;
    }
    if (!isPasswordValid(_passwordController.text)) {
      showToast("Password must be at least 6 characters!");
      return false;
    }
    return true;
  }

// function to validate confirm password
  bool _validateConfirmPassword() {
    if (_confirmPasswordController.text.isEmpty) {
      showToast("Please enter confirm password");
      return false;
    }
    if (_passwordController.text != _confirmPasswordController.text) {
      showToast("Password and confirm password do not match");
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: getHorizontalSize(365),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  padding: getPadding(left: 19, right: 19),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getVerticalSize(161),
                                            width: getHorizontalSize(320),
                                            child: Stack(
                                                alignment: Alignment.topLeft,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgHirehelp1161x304,
                                                      height:
                                                          getVerticalSize(161),
                                                      width: getHorizontalSize(
                                                          304),
                                                      alignment:
                                                          Alignment.center),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage1,
                                                      height:
                                                          getVerticalSize(36),
                                                      width:
                                                          getHorizontalSize(39),
                                                      alignment:
                                                          Alignment.topLeft,
                                                      margin:
                                                          getMargin(top: 22))
                                                ])),
                                        Text("Create An Account",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsMedium24),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding:
                                                  getPadding(left: 13, top: 12),
                                              child: Text("Name",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium14)),
                                        ),
                                        Container(
                                            height: getVerticalSize(61),
                                            width: getHorizontalSize(305),
                                            margin: getMargin(top: 16),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.whiteA700,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(7)),
                                                border: Border.all(
                                                    color:
                                                        ColorConstant.indigo900,
                                                    width:
                                                        getHorizontalSize(1))),
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  contentPadding: getPadding(
                                                      left: 16,
                                                      top: 15,
                                                      right: 16,
                                                      bottom: 15)),
                                              controller:
                                                  _nameController, // pass the controller to the text field
                                            )),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding:
                                                  getPadding(left: 14, top: 8),
                                              child: Text("Email Address",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium14)),
                                        ),
                                        Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: getMargin(top: 16),
                                            color: ColorConstant.whiteA700,
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    color:
                                                        ColorConstant.indigo900,
                                                    width:
                                                        getHorizontalSize(1)),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(7))),
                                            child: Container(
                                                height: getVerticalSize(61),
                                                width: getHorizontalSize(305),
                                                padding: getPadding(
                                                    left: 17,
                                                    top: 15,
                                                    right: 17,
                                                    bottom: 15),
                                                decoration: AppDecoration
                                                    .outlineIndigo900
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder7),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgVector,
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                          width:
                                                              getHorizontalSize(
                                                                  24),
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          margin: getMargin(
                                                              left: 1)),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgCarbonemail,
                                                          height:
                                                              getVerticalSize(
                                                                  28),
                                                          width:
                                                              getHorizontalSize(
                                                                  26),
                                                          alignment: Alignment
                                                              .centerLeft),
                                                      TextFormField(
                                                        decoration:
                                                            InputDecoration(
                                                                border:
                                                                    InputBorder
                                                                        .none,
                                                                contentPadding:
                                                                    getPadding(
                                                                        left:
                                                                            30,
                                                                        top: 10,
                                                                        right:
                                                                            16,
                                                                        bottom:
                                                                            15)),
                                                        controller:
                                                            _emailController, // pass the controller to the text field
                                                      ),
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 13, top: 11),
                                                child: Text("Password",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium14))),
                                        Container(
                                          margin: getMargin(
                                              left: 13, top: 16, right: 7),
                                          padding: getPadding(all: 17),
                                          decoration: AppDecoration
                                              .outlineIndigo900
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder7),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: getVerticalSize(24),
                                                width: getHorizontalSize(20),
                                                padding: getPadding(
                                                    top: 1, bottom: 1),
                                                decoration:
                                                    AppDecoration.fillWhiteA700,
                                                child: Stack(
                                                  children: [
                                                    CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgLock,
                                                      height:
                                                          getVerticalSize(21),
                                                      width:
                                                          getHorizontalSize(15),
                                                      alignment:
                                                          Alignment.topLeft,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    contentPadding: getPadding(
                                                        left: 10,
                                                        top: 5,
                                                        bottom: 5),
                                                    hintStyle: TextStyle(
                                                      color:
                                                          ColorConstant.gray100,
                                                      fontSize: getFontSize(12),
                                                    ),
                                                  ),
                                                  controller:
                                                      _passwordController, // pass the controller to the text field
                                                  obscureText:
                                                      true, // hide the entered password
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 13, top: 11),
                                                child: Text("Confirm Password",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium14))),
                                        Container(
                                          margin: getMargin(
                                              left: 13, top: 16, right: 7),
                                          padding: getPadding(all: 17),
                                          decoration: AppDecoration
                                              .outlineIndigo900
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder7,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: getVerticalSize(24),
                                                width: getHorizontalSize(20),
                                                padding: getPadding(
                                                    top: 1, bottom: 1),
                                                decoration:
                                                    AppDecoration.fillWhiteA700,
                                                child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgLock,
                                                  height: getVerticalSize(21),
                                                  width: getHorizontalSize(15),
                                                  alignment: Alignment.topLeft,
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: getPadding(
                                                      left: 8, right: 4),
                                                  child: TextFormField(
                                                    obscureText: true,
                                                    decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                    ),
                                                    controller:
                                                        _confirmPasswordController, // Assigning controller
                                                  ),
                                                ),
                                              ),
                                              CustomImageView(
                                                svgPath: ImageConstant.imgEye,
                                                height: getVerticalSize(24),
                                                width: getHorizontalSize(20),
                                                margin:
                                                    getMargin(top: 1, right: 2),
                                              ),
                                            ],
                                          ),
                                        ),
                                        GestureDetector(
                                            onTap: () {
                                              onTapLoginbutton(context);
                                            },
                                            child: Container(
                                                margin: getMargin(
                                                    left: 33,
                                                    top: 36,
                                                    right: 25,
                                                    bottom: 82),
                                                padding: getPadding(
                                                    left: 14,
                                                    top: 7,
                                                    right: 14,
                                                    bottom: 7),
                                                decoration: AppDecoration.button
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder7),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 4,
                                                              bottom: 5),
                                                          child: Text(
                                                              "Save and Next",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsSemiBold15)),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgImage131x31,
                                                          height: getSize(31),
                                                          width: getSize(31),
                                                          margin: getMargin(
                                                              bottom: 1))
                                                    ])))
                                      ]))))
                    ]))));
  }

  onTapLoginbutton(BuildContext context) {
    saveData();
  }
}
