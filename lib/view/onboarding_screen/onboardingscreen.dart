import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sample_app/utils/constants/color_constants.dart';
import 'package:sample_app/utils/constants/image_constants.dart';

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // First Section
          _buildBackgroundImage(),

          // Second Section - Gradient with Start cooking button
          _buildGradientSection(),
        ],
      ),
    );
  }

  Widget _buildGradientSection() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 64, vertical: 60),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.transparent, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Let's Cooking",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 56,
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.mainWhite),
            ),
            SizedBox(height: 24),
            Text(
              "Find best recipes for cooking",
              style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorConstants.primaryColor,
              ),
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Start Cooking",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: ColorConstants.mainWhite),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: ColorConstants.mainWhite,
                    size: 25,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundImage() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(ImageConstants.ONBOARDING_SCREEN_BG)),
      ),
    );
  }
}
