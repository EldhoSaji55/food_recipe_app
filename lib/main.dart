import 'package:flutter/material.dart';
import 'package:sample_app/view/onboarding_screen/onboardingscreen.dart';

void main(List<String> args) {
  runApp(FoodRecipeApp());
}

class FoodRecipeApp extends StatelessWidget {
  const FoodRecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Onboardingscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
