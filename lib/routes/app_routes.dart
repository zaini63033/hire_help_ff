import 'package:flutter/material.dart';
import 'package:hire_help_ff/presentation/splash_screen/splash_screen.dart';
import 'package:hire_help_ff/presentation/sign_up_one_screen/sign_up_one_screen.dart';
import 'package:hire_help_ff/presentation/sign_up_two_screen/sign_up_two_screen.dart';
import 'package:hire_help_ff/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:hire_help_ff/presentation/sign_up_three_screen/sign_up_three_screen.dart';
import 'package:hire_help_ff/presentation/login_page_screen/login_page_screen.dart';
import 'package:hire_help_ff/presentation/settings_screen/settings_screen.dart';
import 'package:hire_help_ff/presentation/profile_screen/profile_screen.dart';
import 'package:hire_help_ff/presentation/menu_screen/menu_screen.dart';
import 'package:hire_help_ff/presentation/map_screen/map_screen.dart';
import 'package:hire_help_ff/presentation/payment_methods_screen/payment_methods_screen.dart';
import 'package:hire_help_ff/presentation/homepage_container_screen/homepage_container_screen.dart';
import 'package:hire_help_ff/presentation/locationtwo_screen/locationtwo_screen.dart';
import 'package:hire_help_ff/presentation/ordered_services_screen/ordered_services_screen.dart';
import 'package:hire_help_ff/presentation/scheduled_services_screen/scheduled_services_screen.dart';
import 'package:hire_help_ff/presentation/subscribed_services_screen/subscribed_services_screen.dart';
import 'package:hire_help_ff/presentation/account_settings_screen/account_settings_screen.dart';
import 'package:hire_help_ff/presentation/internal_cleaning_screen/internal_cleaning_screen.dart';
import 'package:hire_help_ff/presentation/car_wash_screen/car_wash_screen.dart';
import 'package:hire_help_ff/presentation/general_services_screen/general_services_screen.dart';
import 'package:hire_help_ff/presentation/next_screen/next_screen.dart';
import 'package:hire_help_ff/presentation/car_services_screen/car_services_screen.dart';
import 'package:hire_help_ff/presentation/engine_services_screen/engine_services_screen.dart';
import 'package:hire_help_ff/presentation/other_screen/other_screen.dart';
import 'package:hire_help_ff/presentation/order_now_screen/order_now_screen.dart';
import 'package:hire_help_ff/presentation/schedule_screen/schedule_screen.dart';
import 'package:hire_help_ff/presentation/schedule_two_screen/schedule_two_screen.dart';
import 'package:hire_help_ff/presentation/subscribe_screen/subscribe_screen.dart';
import 'package:hire_help_ff/presentation/subscribetwo_screen/subscribetwo_screen.dart';
import 'package:hire_help_ff/presentation/serive_crt_screen/serive_crt_screen.dart';
import 'package:hire_help_ff/presentation/room_cleaning_screen/room_cleaning_screen.dart';
import 'package:hire_help_ff/presentation/cooking_screen/cooking_screen.dart';
import 'package:hire_help_ff/presentation/electrician_screen/electrician_screen.dart';
import 'package:hire_help_ff/presentation/visit_request_screen/visit_request_screen.dart';
import 'package:hire_help_ff/presentation/babysitter_screen/babysitter_screen.dart';
import 'package:hire_help_ff/presentation/building_screen/building_screen.dart';
import 'package:hire_help_ff/presentation/cleaning_services_screen/cleaning_services_screen.dart';
import 'package:hire_help_ff/presentation/kitchen_screen/kitchen_screen.dart';
import 'package:hire_help_ff/presentation/repair_screen/repair_screen.dart';
import 'package:hire_help_ff/presentation/repair_two_screen/repair_two_screen.dart';
import 'package:hire_help_ff/presentation/installation_screen/installation_screen.dart';
import 'package:hire_help_ff/presentation/building_repair_screen/building_repair_screen.dart';
import 'package:hire_help_ff/presentation/assemble_screen/assemble_screen.dart';
import 'package:hire_help_ff/presentation/furniture_screen/furniture_screen.dart';
import 'package:hire_help_ff/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:hire_help_ff/presentation/update_passwordtwo_screen/update_passwordtwo_screen.dart';
import 'package:hire_help_ff/presentation/forgot_password_input_field_screen/forgot_password_input_field_screen.dart';
import 'package:hire_help_ff/presentation/update_password_screen/update_password_screen.dart';
import 'package:hire_help_ff/presentation/account_deletion_screen/account_deletion_screen.dart';
import 'package:hire_help_ff/presentation/room_cleaning_two_screen/room_cleaning_two_screen.dart';
import 'package:hire_help_ff/presentation/furniture_two_screen/furniture_two_screen.dart';
import 'package:hire_help_ff/presentation/kitchen_two_screen/kitchen_two_screen.dart';
import 'package:hire_help_ff/presentation/general_servicestwo_screen/general_servicestwo_screen.dart';
import 'package:hire_help_ff/presentation/repair_three_screen/repair_three_screen.dart';
import 'package:hire_help_ff/presentation/installationtwo_screen/installationtwo_screen.dart';
import 'package:hire_help_ff/presentation/visit_requesttwo_screen/visit_requesttwo_screen.dart';
import 'package:hire_help_ff/presentation/building_repair_two_screen/building_repair_two_screen.dart';
import 'package:hire_help_ff/presentation/assembletwo_screen/assembletwo_screen.dart';
import 'package:hire_help_ff/presentation/password_reset_successful_screen/password_reset_successful_screen.dart';
import 'package:hire_help_ff/presentation/internal_cleaningtwo_screen/internal_cleaningtwo_screen.dart';
import 'package:hire_help_ff/presentation/car_wash_two_screen/car_wash_two_screen.dart';
import 'package:hire_help_ff/presentation/engine_two_screen/engine_two_screen.dart';
import 'package:hire_help_ff/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String signUpOneScreen = '/sign_up_one_screen';

  static const String signUpTwoScreen = '/sign_up_two_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String signUpThreeScreen = '/sign_up_three_screen';

  static const String loginPageScreen = '/login_page_screen';

  static const String settingsScreen = '/settings_screen';

  static const String profileScreen = '/profile_screen';

  static const String menuScreen = '/menu_screen';

  static const String mapScreen = '/map_screen';

  static const String paymentMethodsScreen = '/payment_methods_screen';

  static const String homepagePage = '/homepage_page';

  static const String homepageContainerScreen = '/homepage_container_screen';

  static const String locationtwoScreen = '/locationtwo_screen';

  static const String orderedServicesScreen = '/ordered_services_screen';

  static const String scheduledServicesScreen = '/scheduled_services_screen';

  static const String subscribedServicesScreen = '/subscribed_services_screen';

  static const String accountSettingsScreen = '/account_settings_screen';

  static const String internalCleaningScreen = '/internal_cleaning_screen';

  static const String carWashScreen = '/car_wash_screen';

  static const String generalServicesScreen = '/general_services_screen';

  static const String nextScreen = '/next_screen';

  static const String carServicesScreen = '/car_services_screen';

  static const String engineServicesScreen = '/engine_services_screen';

  static const String otherScreen = '/other_screen';

  static const String orderNowScreen = '/order_now_screen';

  static const String scheduleScreen = '/schedule_screen';

  static const String scheduleTwoScreen = '/schedule_two_screen';

  static const String subscribeScreen = '/subscribe_screen';

  static const String subscribetwoScreen = '/subscribetwo_screen';

  static const String seriveCrtScreen = '/serive_crt_screen';

  static const String roomCleaningScreen = '/room_cleaning_screen';

  static const String cookingScreen = '/cooking_screen';

  static const String electricianScreen = '/electrician_screen';

  static const String visitRequestScreen = '/visit_request_screen';

  static const String babysitterScreen = '/babysitter_screen';

  static const String buildingScreen = '/building_screen';

  static const String cleaningServicesScreen = '/cleaning_services_screen';

  static const String kitchenScreen = '/kitchen_screen';

  static const String repairScreen = '/repair_screen';

  static const String repairTwoScreen = '/repair_two_screen';

  static const String installationScreen = '/installation_screen';

  static const String buildingRepairScreen = '/building_repair_screen';

  static const String assembleScreen = '/assemble_screen';

  static const String furnitureScreen = '/furniture_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String updatePasswordtwoScreen = '/update_passwordtwo_screen';

  static const String forgotPasswordInputFieldScreen =
      '/forgot_password_input_field_screen';

  static const String updatePasswordScreen = '/update_password_screen';

  static const String accountDeletionScreen = '/account_deletion_screen';

  static const String roomCleaningTwoScreen = '/room_cleaning_two_screen';

  static const String furnitureTwoScreen = '/furniture_two_screen';

  static const String kitchenTwoScreen = '/kitchen_two_screen';

  static const String generalServicestwoScreen = '/general_servicestwo_screen';

  static const String repairThreeScreen = '/repair_three_screen';

  static const String installationtwoScreen = '/installationtwo_screen';

  static const String visitRequesttwoScreen = '/visit_requesttwo_screen';

  static const String buildingRepairTwoScreen = '/building_repair_two_screen';

  static const String assembletwoScreen = '/assembletwo_screen';

  static const String passwordResetSuccessfulScreen =
      '/password_reset_successful_screen';

  static const String internalCleaningtwoScreen =
      '/internal_cleaningtwo_screen';

  static const String carWashTwoScreen = '/car_wash_two_screen';

  static const String engineTwoScreen = '/engine_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    signUpOneScreen: (context) => SignUpOneScreen(),
    signUpTwoScreen: (context) => SignUpTwoScreen(),
    onboardingOneScreen: (context) => OnboardingOneScreen(),
    signUpThreeScreen: (context) => SignUpThreeScreen(),
    loginPageScreen: (context) => LoginPageScreen(),
    settingsScreen: (context) => SettingsScreen(),
    profileScreen: (context) => ProfileScreen(),
    menuScreen: (context) => MenuScreen(),
    mapScreen: (context) => MapScreen(),
    paymentMethodsScreen: (context) => PaymentMethodsScreen(),
    homepageContainerScreen: (context) => HomepageContainerScreen(),
    locationtwoScreen: (context) => LocationtwoScreen(),
    orderedServicesScreen: (context) => OrderedServicesScreen(),
    scheduledServicesScreen: (context) => ScheduledServicesScreen(),
    subscribedServicesScreen: (context) => SubscribedServicesScreen(),
    accountSettingsScreen: (context) => AccountSettingsScreen(),
    internalCleaningScreen: (context) => InternalCleaningScreen(),
    carWashScreen: (context) => CarWashScreen(),
    generalServicesScreen: (context) => GeneralServicesScreen(),
    nextScreen: (context) => NextScreen(),
    carServicesScreen: (context) => CarServicesScreen(),
    engineServicesScreen: (context) => EngineServicesScreen(),
    otherScreen: (context) => OtherScreen(),
    orderNowScreen: (context) => OrderNowScreen(),
    scheduleScreen: (context) => ScheduleScreen(),
    scheduleTwoScreen: (context) => ScheduleTwoScreen(),
    subscribeScreen: (context) => SubscribeScreen(),
    subscribetwoScreen: (context) => SubscribetwoScreen(),
    seriveCrtScreen: (context) => SeriveCrtScreen(),
    roomCleaningScreen: (context) => RoomCleaningScreen(),
    cookingScreen: (context) => CookingScreen(),
    electricianScreen: (context) => ElectricianScreen(),
    visitRequestScreen: (context) => VisitRequestScreen(),
    babysitterScreen: (context) => BabysitterScreen(),
    buildingScreen: (context) => BuildingScreen(),
    cleaningServicesScreen: (context) => CleaningServicesScreen(),
    kitchenScreen: (context) => KitchenScreen(),
    repairScreen: (context) => RepairScreen(),
    repairTwoScreen: (context) => RepairTwoScreen(),
    installationScreen: (context) => InstallationScreen(),
    buildingRepairScreen: (context) => BuildingRepairScreen(),
    assembleScreen: (context) => AssembleScreen(),
    furnitureScreen: (context) => FurnitureScreen(),
    resetPasswordScreen: (context) => ResetPasswordScreen(),
    updatePasswordtwoScreen: (context) => UpdatePasswordtwoScreen(),
    forgotPasswordInputFieldScreen: (context) =>
        ForgotPasswordInputFieldScreen(),
    updatePasswordScreen: (context) => UpdatePasswordScreen(),
    accountDeletionScreen: (context) => AccountDeletionScreen(),
    roomCleaningTwoScreen: (context) => RoomCleaningTwoScreen(),
    furnitureTwoScreen: (context) => FurnitureTwoScreen(),
    kitchenTwoScreen: (context) => KitchenTwoScreen(),
    generalServicestwoScreen: (context) => GeneralServicestwoScreen(),
    repairThreeScreen: (context) => RepairThreeScreen(),
    installationtwoScreen: (context) => InstallationtwoScreen(),
    visitRequesttwoScreen: (context) => VisitRequesttwoScreen(),
    buildingRepairTwoScreen: (context) => BuildingRepairTwoScreen(),
    assembletwoScreen: (context) => AssembletwoScreen(),
    passwordResetSuccessfulScreen: (context) => PasswordResetSuccessfulScreen(),
    internalCleaningtwoScreen: (context) => InternalCleaningtwoScreen(),
    carWashTwoScreen: (context) => CarWashTwoScreen(),
    engineTwoScreen: (context) => EngineTwoScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
