import 'package:flutter/material.dart';
import 'package:islame/features/SuraDetails/Sura_Details.dart';
import 'package:islame/features/layout/main_layout.dart';
import 'package:islame/features/splash/splash_screen.dart';

class RoutesManger {
  static const String splash = '/splash';
  static const String onboarding = '/onBoarding';
  static const String mainlayout = '/mainlayout';
  static const String suraDetailis = '/suraDetails';

  static Map<String, WidgetBuilder> routes = {
    splash: (context) => const splashscreen(),
    mainlayout: (context) => const MainLayout(),
    suraDetailis: (context) => const SuraDetails(),
  };
}
