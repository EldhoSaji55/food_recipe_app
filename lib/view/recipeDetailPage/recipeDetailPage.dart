import 'package:flutter/material.dart';

class Recipedetailpage extends StatelessWidget {
  String title;
  String rating;
  String bgurl;
  String profileurl;
  String postedby;
  Recipedetailpage(
      {required this.title,
      required this.rating,
      required this.bgurl,
      required this.profileurl,
      required this.postedby,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
