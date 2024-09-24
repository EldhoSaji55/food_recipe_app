import 'package:flutter/material.dart';
import 'package:sample_app/utils/constants/color_constants.dart';

class ProfileFollowersNumberSection extends StatelessWidget {
  const ProfileFollowersNumberSection({
    super.key,
    required this.title,
    required this.count,
  });
  final String title;
  final String count;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: ColorConstants.fontGray),
        ),
        Text(
          count,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: ColorConstants.mainBlack),
        ),
      ],
    );
  }
}
