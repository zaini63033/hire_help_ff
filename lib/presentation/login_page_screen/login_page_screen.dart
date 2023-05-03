import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hire_help_v2/core/app_export.dart';
import 'package:hire_help_v2/widgets/custom_button.dart';

import '../homepage_screen/homepage_screen.dart';

class LoginPageScreen extends StatefulWidget {
  @override
  State<LoginPageScreen> createState() => _LoginPageScreenState();
}

class _LoginPageScreenState extends State<LoginPageScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  // sign user in method
  void signUserIn() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // try sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      // pop the loading circle
      Navigator.pop(context);

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomepageScreen()),
      );
    } on FirebaseAuthException catch (e) {
      // pop the loading circle
      Navigator.pop(context);
      // WRONG EMAIL
      if (e.code == 'user-not-found') {
        // show error to user
        wrongEmailMessage();
      }

      // WRONG PASSWORD
      else if (e.code == 'wrong-password') {
        // show error to user
        wrongPasswordMessage();
      }
    }
  }

  // wrong email message popup
  void wrongEmailMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          backgroundColor: Colors.deepPurple,
          title: Center(
            child: Text(
              'Incorrect Email',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  // wrong password message popup
  void wrongPasswordMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          backgroundColor: Colors.deepPurple,
          title: Center(
            child: Text(
              'Incorrect Password',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: SingleChildScrollView(
              child: Container(
                  width: getHorizontalSize(364),
                  padding: getPadding(left: 19, top: 22, right: 19, bottom: 22),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                height: getVerticalSize(155),
                                width: getHorizontalSize(290),
                                child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgHirehelp1137x254,
                                          height: getVerticalSize(137),
                                          width: getHorizontalSize(254),
                                          alignment: Alignment.bottomRight),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgImage1,
                                          height: getVerticalSize(36),
                                          width: getHorizontalSize(39),
                                          alignment: Alignment.topLeft)
                                    ]))),
                        Container(
                            width: getHorizontalSize(207),
                            margin: getMargin(top: 33),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Welcome Back\n\n",
                                      style: TextStyle(
                                          color: ColorConstant.indigo900,
                                          fontSize: getFontSize(24),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w700)),
                                  TextSpan(
                                      text: "Login to continue",
                                      style: TextStyle(
                                          color: ColorConstant.indigo900,
                                          fontSize: getFontSize(24),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500))
                                ]),
                                textAlign: TextAlign.center)),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(left: 10, top: 35),
                                child: Text("Email Address",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium14))),
                        Container(
                          width: getHorizontalSize(305),
                          margin: getMargin(left: 10, top: 3, right: 10),
                          padding: getPadding(
                            left: 17,
                            top: 12,
                            right: 17,
                            bottom: 12,
                          ),
                          decoration: AppDecoration.outlineIndigo900.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder7,
                          ),
                          child: TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: getFontSize(14),
                                fontWeight: FontWeight.w400,
                              ),
                              prefixIcon: CustomImageView(
                                svgPath: ImageConstant.imgCarbonemail,
                                height: getVerticalSize(28),
                                width: getHorizontalSize(27),
                                margin: getMargin(bottom: 7),
                              ),
                            ),
                            style: TextStyle(
                              color: ColorConstant.indigo900,
                              fontFamily: 'Poppins',
                              fontSize: getFontSize(14),
                              fontWeight: FontWeight.w400,
                            ),
                            validator: (value) {
                              // add your validation logic here
                            },
                          ),
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(left: 10, top: 19),
                                child: Text("Password",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium14))),
                        Container(
                          margin: getMargin(left: 10, top: 3, right: 10),
                          padding: getPadding(
                              left: 15, top: 13, right: 15, bottom: 13),
                          decoration: AppDecoration.outlineIndigo900.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder7,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgLock,
                                height: getVerticalSize(28),
                                width: getHorizontalSize(27),
                                margin: getMargin(bottom: 5),
                              ),
                              Expanded(
                                child: TextFormField(
                                  controller: passwordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Password',
                                    hintStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: getFontSize(14),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  style: TextStyle(
                                    color: ColorConstant.indigo900,
                                    fontFamily: 'Poppins',
                                    fontSize: getFontSize(14),
                                    fontWeight: FontWeight.w400,
                                  ),
                                  validator: (value) {
                                    // Add any validation logic here
                                  },
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgAntdesigneye,
                                height: getVerticalSize(24),
                                width: getHorizontalSize(20),
                                margin: getMargin(top: 4, right: 3, bottom: 4),
                              ),
                            ],
                          ),
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                                onTap: () {
                                  onTapTxtForgotpassword(context);
                                },
                                child: Padding(
                                    padding: getPadding(top: 21, right: 9),
                                    child: Text("Forgot Password?",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium13)))),
                        CustomButton(
                          text: "LOG IN",
                          margin: getMargin(left: 29, top: 74, right: 28),
                          onTap: () => onTapLogin(context),
                          buttonText: '',
                          onPressed: () {},
                        ),
                        Padding(
                            padding: getPadding(top: 25, bottom: 5),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Don’t have an account? ",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium1075),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtSignupnow(context);
                                      },
                                      child: Padding(
                                          padding: getPadding(left: 1),
                                          child: Text("Sign up now",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsMedium1075Indigo900)))
                                ]))
                      ])),
            )));
  }

  onTapTxtForgotpassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordInputFieldScreen);
  }

  onTapLogin(BuildContext context) {
    signUserIn();
  }

  onTapTxtSignupnow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpOneScreen);
  }
}
