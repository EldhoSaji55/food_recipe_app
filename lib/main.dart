import 'package:flutter/material.dart';
import 'package:sample_app/view/splash_screen/splash_screen.dart';

void main(List<String> args) {
  runApp(FoodRecipeApp());
}

class FoodRecipeApp extends StatelessWidget {
  const FoodRecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
