import 'package:flutter/material.dart';
import 'package:hire_help_v2/presentation/splash_screen/splash_screen.dart';
import 'package:hire_help_v2/presentation/sign_up_one_screen/sign_up_one_screen.dart';
import 'package:hire_help_v2/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:hire_help_v2/presentation/sign_up_two_screen/sign_up_two_screen.dart';
import 'package:hire_help_v2/presentation/sign_up_three_screen/sign_up_three_screen.dart';
import 'package:hire_help_v2/presentation/login_page_screen/login_page_screen.dart';
import 'package:hire_help_v2/presentation/menu_screen/menu_screen.dart';
import 'package:hire_help_v2/presentation/profile_screen/profile_screen.dart';
import 'package:hire_help_v2/presentation/payment_methods_screen/payment_methods_screen.dart';
import 'package:hire_help_v2/presentation/settings_screen/settings_screen.dart';
import 'package:hire_help_v2/presentation/homepage_screen/homepage_screen.dart';
import 'package:hire_help_v2/presentation/update_passwordtwo_screen/update_passwordtwo_screen.dart';
import 'package:hire_help_v2/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:hire_help_v2/presentation/update_password_screen/update_password_screen.dart';
import 'package:hire_help_v2/presentation/forgot_password_input_field_screen/forgot_password_input_field_screen.dart';
import 'package:hire_help_v2/presentation/password_reset_successful_screen/password_reset_successful_screen.dart';
import 'package:hire_help_v2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String signUpOneScreen = '/sign_up_one_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String signUpTwoScreen = '/sign_up_two_screen';

  static const String signUpThreeScreen = '/sign_up_three_screen';

  static const String loginPageScreen = '/login_page_screen';

  static const String menuScreen = '/menu_screen';

  static const String profileScreen = '/profile_screen';

  static const String paymentMethodsScreen = '/payment_methods_screen';

  static const String settingsScreen = '/settings_screen';

  static const String homepageScreen = '/homepage_screen';

  static const String updatePasswordtwoScreen = '/update_passwordtwo_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String updatePasswordScreen = '/update_password_screen';

  static const String forgotPasswordInputFieldScreen =
      '/forgot_password_input_field_screen';

  static const String passwordResetSuccessfulScreen =
      '/password_reset_successful_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    signUpOneScreen: (context) => SignUpOneScreen(),
    onboardingOneScreen: (context) => OnboardingOneScreen(),
    signUpTwoScreen: (context) => SignUpTwoScreen(),
    signUpThreeScreen: (context) => SignUpThreeScreen(),
    loginPageScreen: (context) => LoginPageScreen(),
    menuScreen: (context) => MenuScreen(),
    profileScreen: (context) => ProfileScreen(),
    paymentMethodsScreen: (context) => PaymentMethodsScreen(),
    settingsScreen: (context) => SettingsScreen(),
    homepageScreen: (context) => HomepageScreen(),
    updatePasswordtwoScreen: (context) => UpdatePasswordtwoScreen(),
    resetPasswordScreen: (context) => ResetPasswordScreen(),
    updatePasswordScreen: (context) => UpdatePasswordScreen(),
    forgotPasswordInputFieldScreen: (context) =>
        ForgotPasswordInputFieldScreen(),
    passwordResetSuccessfulScreen: (context) => PasswordResetSuccessfulScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
