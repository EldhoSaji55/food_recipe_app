import 'package:flutter/material.dart';
import 'package:sample_app/utils/constants/color_constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {required this.text,
      this.onButtonPressed,
      super.key,
      this.height,
      this.width,
      this.backgroundColor,
      this.fontcolor});
  final String text;
  final double? height;
  final double? width;
  final void Function()? onButtonPressed;
  Color? backgroundColor = ColorConstants.primaryColor;
  Color? fontcolor = ColorConstants.mainWhite;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onButtonPressed,
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: ColorConstants.primaryColor),
          color: backgroundColor ?? ColorConstants.primaryColor,
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: fontcolor ?? ColorConstants.mainWhite,
                fontWeight: FontWeight.w600,
                fontSize: 14),
          ),
        ),
      ),
    );
  }
}
