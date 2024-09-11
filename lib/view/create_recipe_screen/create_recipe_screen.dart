import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:sample_app/utils/constants/color_constants.dart';

class CreateRecipeScreen extends StatelessWidget {
  CreateRecipeScreen(
      {super.key,
      this.bgurl =
          "https://cdn.pixabay.com/photo/2017/11/10/05/24/add-2935429_1280.png"});
  String bgurl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.more_horiz,
              size: 24,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            width: 244,
            child: Text(
              "Create recipe",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            padding: EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 16),
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(bgurl), fit: BoxFit.fill)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: CircleAvatar(
                      radius: 16,
                      backgroundColor: ColorConstants.mainWhite,
                      child: Icon(
                        HugeIcons.strokeRoundedEdit02,
                        size: 20,
                        color: ColorConstants.primaryColor,
                      )),
                ),
                Center(
                    child: CircleAvatar(
                  radius: 24,
                  backgroundColor: ColorConstants.lightblack.withOpacity(.3),
                  child: Icon(
                    Icons.play_arrow_rounded,
                    color: ColorConstants.mainWhite,
                  ),
                )),
                SizedBox(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
