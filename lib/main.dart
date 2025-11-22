import 'package:flutter/material.dart';
import 'package:islame/core/routes_manger/routes_manger.dart';

void main() {
  runApp(const islameapp());
}

class islameapp extends StatelessWidget {
  const islameapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: RoutesManger.routes,
      initialRoute: RoutesManger.splash,
    );
  }
}
