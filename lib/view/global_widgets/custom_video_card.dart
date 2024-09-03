import 'package:flutter/material.dart';
import 'package:sample_app/utils/constants/color_constants.dart';

class CustomVideoCard extends StatelessWidget {
  const CustomVideoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 280,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"))),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: ColorConstants.lightblack.withOpacity(0.3),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: ColorConstants.mainWhite,
                      ),
                      Text(
                        " 4.5",
                        style: TextStyle(
                            color: ColorConstants.mainWhite,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      )
                    ],
                  ),
                  height: 30,
                  width: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: ColorConstants.mainWhite,
                    child: Icon(Icons.bookmark_border),
                  ),
                )
              ],
            ),
            CircleAvatar(
              radius: 20,
              backgroundColor: ColorConstants.lightblack.withOpacity(.3),
              child: Icon(
                Icons.play_arrow_rounded,
                color: ColorConstants.mainWhite,
                size: 25,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 30,
                color: ColorConstants.mainBlack.withOpacity(.3),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(
                    "15:10",
                    style: TextStyle(
                        color: ColorConstants.mainWhite,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
