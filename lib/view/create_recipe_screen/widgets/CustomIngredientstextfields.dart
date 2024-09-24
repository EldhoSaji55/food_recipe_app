import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:sample_app/utils/constants/color_constants.dart';

class customIngredientstextfields extends StatelessWidget {
  const customIngredientstextfields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 5,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Item Name",
                    hintStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: ColorConstants.primaryColor),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorConstants.lightGray),
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              flex: 3,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Quantity",
                    hintStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: ColorConstants.primaryColor),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorConstants.lightGray),
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              width: 12,
            ),
            HugeIcon(
                icon: HugeIcons.strokeRoundedRemoveSquare,
                color: ColorConstants.lightblack)
          ],
        ),
        SizedBox(
          height: 16,
        )
      ],
    );
  }
}
