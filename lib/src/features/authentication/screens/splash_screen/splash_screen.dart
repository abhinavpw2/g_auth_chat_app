import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp/src/common_widgets/fade_in/animation_design.dart';
import 'package:loginapp/src/constants/images_strings.dart';
import 'package:loginapp/src/constants/sizes.dart';
import 'package:loginapp/src/constants/texts_strings.dart';
import 'package:loginapp/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:loginapp/src/features/authentication/screens/welcome/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  SplashScreenController splashScreenController =
      Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashScreenController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          ZFadeInAnimation(splashScreenController: splashScreenController),
          Obx(() =>
             AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: splashScreenController.animate.value ? 100 : 0,
              child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 2000),
                  opacity: splashScreenController.animate.value ? 1 : 0,
                  child: const Image(image: AssetImage(splashImage))),
            ),
          ),
        ],
      ),
    );
  }
}
