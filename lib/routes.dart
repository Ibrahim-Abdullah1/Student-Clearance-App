import 'package:flutter/material.dart';
import 'package:student_clearance_app/pages/apply_clearance.dart';
import 'package:student_clearance_app/pages/login_page.dart';
import 'package:student_clearance_app/pages/splash_screen.dart';
import 'package:student_clearance_app/pages/student_notification_dashboard.dart';
import 'package:student_clearance_app/widget/Apply_clearance_widget.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginPageScreen = '/login_page_screen';

  static const String forgetPasswordScreen = '/forget_password_screen';

  static const String studentDashboardScreen = '/student_dashboard_screen';

  static const String editScreen = '/edit_screen';

  static const String studentDashboardOneScreen =
      '/student_dashboard_one_screen';

  static const String applyClearenceScreen = '/apply_clearence_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    loginPageScreen: (context) => LoginPageScreen(),
    // forgetPasswordScreen: (context) => ForgetPasswordScreen(),
    // studentDashboardScreen: (context) => StudentDashboardScreen(),
    // editScreen: (context) => EditScreen(),
    studentDashboardOneScreen: (context) => StudentDashboardOneScreen(),
    // applyClearenceScreen: (context) => ApplyClearenceScreen(),
    // appNavigationScreen: (context) => AppNavigationScreen()
  };
}
