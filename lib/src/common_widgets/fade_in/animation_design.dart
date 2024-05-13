import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:loginapp/src/constants/sizes.dart';
import '../../constants/texts_strings.dart';
import '../../features/authentication/controllers/splash_screen_controller.dart';

class ZFadeInAnimation extends StatelessWidget {
  const ZFadeInAnimation({
    super.key,
    required this.splashScreenController,
  });

  final SplashScreenController splashScreenController;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        duration: const Duration(milliseconds: 1600),
        top: 80,
        left: splashScreenController.animate.value ? defaultSize : -80,
        child: AnimatedOpacity(
          opacity: splashScreenController.animate.value ? 1 : 0,
          duration: const Duration(milliseconds: 1600),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                zappName,
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                zappTagLine,
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
