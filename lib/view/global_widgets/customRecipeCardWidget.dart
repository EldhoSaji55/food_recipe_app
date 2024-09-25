import 'package:flutter/material.dart';
import 'package:sample_app/utils/constants/color_constants.dart';

class CustomRecipeCardWidget extends StatelessWidget {
  const CustomRecipeCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.pexels.com/photos/769289/pexels-photo-769289.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 20,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorConstants.lightblack.withOpacity(0.3)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: ColorConstants.mainWhite,
                            size: 16,
                          ),
                          Text(
                            "5.0",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: ColorConstants.mainWhite),
                          )
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: ColorConstants.mainWhite,
                      child: Icon(
                        Icons.more_horiz,
                        size: 20,
                        color: ColorConstants.primaryColor,
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 162,
                      child: Text("How to make Italian Spaghetti at home",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: ColorConstants.mainWhite)),
                    ),
                    Row(
                      children: [
                        Text("12 Ingredients",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: ColorConstants.mainWhite)),
                        Container(
                          height: 15,
                          child: VerticalDivider(
                            color: ColorConstants.mainWhite,
                            thickness: 2,
                          ),
                        ),
                        Text("40 min",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: ColorConstants.mainWhite)),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 12,
        )
      ],
    );
  }
}
