import 'package:alquran_app_id/app/data/constant.dart';
import 'package:alquran_app_id/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  const IntroductionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          const Text(
            "Quran App",
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, color: purple1),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: 195,
            child: const Text(
              "Learn Quran and Recite once everyday",
              textAlign: TextAlign.center,
              maxLines: 2,
              style: TextStyle(fontSize: 18, color: grey),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                  height: 400,
                  child: Image.asset("assets/images/onboarding_image.png")),
              Positioned(
                bottom: -20,
                child: Container(
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    height: 60,
                    minWidth: 185,
                    color: pink,
                    onPressed: () {
                      Get.offAndToNamed(Routes.HOME);
                    },
                    child: const Text(
                      "GET STARTED",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
