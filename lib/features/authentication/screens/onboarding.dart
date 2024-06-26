import 'package:ecomm/features/authentication/controllers/onboarding_controller.dart';
import 'package:ecomm/utils/constants/image_strings.dart';
import 'package:ecomm/utils/constants/sizes.dart';
import 'package:ecomm/utils/constants/text_strings.dart';
import 'package:ecomm/utils/device/device_utlity.dart';
import 'package:ecomm/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    Image(
                      width: THelperFunctions.screenWidth() * 0.8,
                      height: THelperFunctions.screenHeight() * 0.6,
                      image: const AssetImage(TImages.delivery),
                    ),
                    Text(
                      TTexts.onBoardingTitle1,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      TTexts.onBoardingSubTitle1,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              )
            ],
          ),
          Positioned(
              top: TDeviceUtils.getAppBarHeight(),
              right: TSizes.defauItSpace,
              child: TextButton(onPressed: () {}, child: Text('skip'))),
          Positioned(
              right: TSizes.defauItSpace,
              bottom: TDeviceUtils.getBottomNavigationBarHeight(),
              child: ElevatedButton(
                onPressed: () => OnBoardingController.instance.nextPage(),
                child: Icon(Iconsax.arrow_right_3),
              ))
        ],
      ),
    );
  }
}
