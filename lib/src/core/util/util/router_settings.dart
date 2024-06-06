import 'package:flutter/material.dart';
import 'package:sharedexperiences/src/pages/drawer/home_page_drawer.dart';
import 'package:sharedexperiences/src/pages/login/login_page.dart';
import 'package:sharedexperiences/src/pages/recover/recover_pass_page.dart';
import 'package:sharedexperiences/src/pages/register_user/register_page.dart';
import 'package:sharedexperiences/src/pages/splash/splash_page.dart';
import 'package:sharedexperiences/src/pages/trip_detail/detail_trip_page.dart';
import 'package:sharedexperiences/src/pages/welcome/welcome_page.dart';

///Create routes for all application
class RoutersSettings {
  ///Page with splash screen
  static const initialRoute = '/splash';

  ///Page with Welcome page
  static const welcomeRoute = '/welcome';

  ///Page with Home, first screen with user is logged
  static const homeRoute = '/home';

  ///Register page, create new user
  static const registerRouter = '/register';

  ///Login page
  static const loginRouter = '/login';

  ///Login page
  static const recoverPassRouter = '/recoverPass';

  ///Trip detail page
  static const detailTripRouter = '/detailTrip';

  ///Page with splash screen
  static var customRoutes = <String, WidgetBuilder>{
    initialRoute: (context) => const SplashPage(),
    homeRoute: (context) => const DrawerMenuHome(),
    welcomeRoute: (context) => const WelcomePage(),
    registerRouter: (context) => const RegisterPage(),
    loginRouter: (context) => const LoginPage(),
    recoverPassRouter: (context) => const RecoverPassPage(),
    detailTripRouter: (context) => const DetailTripPage(),
  };
}
