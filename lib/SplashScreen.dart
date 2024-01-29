// import 'package:animated_text_kit/animated_text_kit.dart';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:realtime_ocr/home_screens/HomeScreen.dart';
import 'package:realtime_ocr/res/colors/app_color.dart';

import '../res/assets/images/image_assets.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   Timer(
  //       const Duration(seconds: 3),
  //           () => Get.toNamed(RoutesName.loginScreen),
  //   );
  // }


  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 5000,
        splashIconSize: 200,
        splash: Image.asset(ImageAssets.logo, height: 200, width: 200),
        nextScreen: const HomeScreen(),
        // LandingPage(),
        // splashTransition: SplashTransition.sizeTransition,
        // pageTransitionType: PageTransitionType.rightToLeftJoined,
        backgroundColor: AppColor.whiteColor
    );
  }
}
