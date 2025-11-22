import 'package:flutter/material.dart';
import 'package:islame/core/resources/ColorsManger.dart';
import 'package:islame/core/resources/assets_manger.dart';
import 'package:islame/core/routes_manger/routes_manger.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigate();
  }

  void navigate() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, RoutesManger.mainlayout);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorsmanger.black,
      body: Center(
        child: Column(
          children: [
            const Spacer(flex: 6),
            Image.asset(ImageAssets.splashlogo),
            const Spacer(
              flex: 6,
            ),
            Image.asset(ImageAssets.brandingImage),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
