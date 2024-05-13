import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../../constants/colors.dart';
import '../../../constants/images_strings.dart';
import '../../../constants/texts_strings.dart';
import '../models/model_on_boarding.dart';
import '../screens/on_boarding_screen/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();

  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: onBoardingImage1,
        title: zOnBoardingTitle1,
        subTitle: zOnBoardingSubTitle1,
        counterText: zOnBoardingCounter1,
        bgColor: onBoardingPage1Color,
        //height: ScreenSize.height,
      ),
    ),
    OnBoardingPageWidget(
        model: OnBoardingModel(
      image: onBoardingImage2,
      title: zOnBoardingTitle2,
      subTitle: zOnBoardingSubTitle2,
      counterText: zOnBoardingCounter2,
      bgColor: onBoardingPage2Color,
    )),
    OnBoardingPageWidget(
        model: OnBoardingModel(
      image: onBoardingImage3,
      title: zOnBoardingTitle3,
      subTitle: zOnBoardingSubTitle3,
      counterText: zOnBoardingCounter3,
      bgColor: onBoardingPage3Color,
    ))
  ];
  OnPageChangeCallback(int activePageIndex) {
    currentPage.value = activePageIndex;
  }

  Skip() => controller.jumpToPage(page: 2);

  AnimateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }
}
