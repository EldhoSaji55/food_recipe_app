import 'package:flutter/material.dart';
import 'package:sample_app/utils/constants/color_constants.dart';

class CustomVideoCard extends StatelessWidget {
  String rating;
  String videolength;
  String bgurl;
  String profileurl;
  String dishdetails;
  String postedby;
  double width;
  void Function()? onCardTapped;

  CustomVideoCard({
    this.width = 280,
    required this.rating,
    required this.videolength,
    required this.bgurl,
    required this.profileurl,
    required this.dishdetails,
    required this.postedby,
    this.onCardTapped,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTapped,
      child: SizedBox(
        width: width,
        child: Column(
          children: [
            Container(
              height: 180,
              width: width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(bgurl), fit: BoxFit.fill)),
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
                                rating,
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
                      backgroundColor:
                          ColorConstants.lightblack.withOpacity(.3),
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
                            videolength,
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
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    dishdetails,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.more_horiz,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7, top: 8),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundImage: NetworkImage(profileurl),
                  ),
                  Text(
                    "  By $postedby",
                    style: TextStyle(
                        color: ColorConstants.lightGray,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
