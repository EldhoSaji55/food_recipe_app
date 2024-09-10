import 'package:flutter/material.dart';
import 'package:sample_app/utils/constants/color_constants.dart';

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
      appBar: AppBar(
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 244,
              child: Text(
                title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(bgurl), fit: BoxFit.fill)),
              child: Center(
                  child: CircleAvatar(
                radius: 24,
                backgroundColor: ColorConstants.lightblack.withOpacity(.3),
                child: Icon(
                  Icons.play_arrow_rounded,
                  color: ColorConstants.mainWhite,
                ),
              )),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: ColorConstants.primaryGolden,
                ),
                Text(
                  rating,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Text(
                  "  (300 Reviews)",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: ColorConstants.lightGray),
                )
              ],
            ),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: CircleAvatar(
                radius: 20.5,
                backgroundImage: NetworkImage(profileurl),
              ),
              title: Text(
                postedby,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: ColorConstants.primaryColor,
                    size: 16,
                  ),
                  Text(
                    " Bali, Indonesia",
                    style: TextStyle(
                        color: ColorConstants.lightGray,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              trailing: ElevatedButton(
                  style: ButtonStyle(
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      foregroundColor:
                          WidgetStatePropertyAll(ColorConstants.mainWhite),
                      backgroundColor:
                          WidgetStatePropertyAll(ColorConstants.primaryColor)),
                  onPressed: () {},
                  child: Text(
                    "Follow",
                    style: TextStyle(),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
