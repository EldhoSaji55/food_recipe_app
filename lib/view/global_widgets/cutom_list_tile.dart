import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:sample_app/utils/constants/color_constants.dart';

class customListTile extends StatelessWidget {
  customListTile({
    super.key,
    this.have_arrow = false,
    required this.prefix_Icon,
    required this.card_title,
    required this.card_suffix,
  });
  bool have_arrow;
  HugeIcon prefix_Icon;
  String card_title;
  String card_suffix;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorConstants.neutralGray,
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorConstants.mainWhite),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: prefix_Icon,
              ),
            ),
            SizedBox(width: 16),
            Text(card_title),
            Spacer(),
            Text(card_suffix),
            Padding(
              padding: const EdgeInsets.only(left: 2),
              child: have_arrow
                  ? Icon(
                      Icons.arrow_forward,
                      color: ColorConstants.mainBlack,
                    )
                  : SizedBox(),
            ),
          ],
        ));
  }
}
