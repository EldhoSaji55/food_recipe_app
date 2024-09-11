import 'package:flutter/material.dart';
import 'package:sample_app/utils/constants/color_constants.dart';

class customListTile extends StatelessWidget {
  customListTile({
    super.key,
    this.have_arrow = false,
  });
  bool have_arrow;
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
                child: Icon(Icons.coffee),
              ),
            ),
            SizedBox(width: 16),
            Text("Bread"),
            Spacer(),
            Text("data"),
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
