
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uza_/features/screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Variables 

  final pageController = PageController();

  Rx<int> currentPageIndex = 0.obs;
  // Update Current Index when Page Scroll

  void updatePageIndicator(index) => currentPageIndex.value = index;

  // Jump to the specific dot selected page 

  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }
    

  // Update current Index and Jump to the next page 

  void nextPage(){
    if(currentPageIndex.value == 2){
      Get.offAll(const LoginScreen());

    } else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }


  // Update Current Index 

  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}