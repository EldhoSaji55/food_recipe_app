import 'package:flutter/material.dart';
import 'package:sample_app/utils/constants/color_constants.dart';
import 'package:sample_app/view/global_widgets/custom_button.dart';
import 'package:sample_app/view/profile_screen/widgets/ProfileFollowersNumberSection.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          "My Profile",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        actions: [
          Icon(
            Icons.more_horiz,
            size: 24,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        children: [
          //Section Above Divider
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                // Profile Editing Section
                _EditProfileSection(),
                SizedBox(
                  height: 20,
                ),
                // Profile Followers Section
                _ProfileFollowersSection(),
              ],
            ),
          ),

          // Divider Section
          Container(
            height: 1,
            width: double.infinity,
            color: ColorConstants.lightGray,
          ),
          SizedBox(
            height: 12,
          ),

          // Section Below Divider
          _RecipeDetailsSection()
        ],
      ),
    );
  }

  Widget _RecipeDetailsSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: DefaultTabController(
        initialIndex: 1,
        length: 2,
        child: Column(
          children: [
            TabBar(
              isScrollable: false,
              dividerColor: Colors.transparent,
              tabAlignment: TabAlignment.fill,
              unselectedLabelColor: ColorConstants.primaryColor,
              labelColor: ColorConstants.mainWhite,
              labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                color: ColorConstants.primaryColor,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
              ),
              tabs: [
                Container(
                  height: 36,
                  child: Center(child: Text("Video")),
                ),
                Container(
                  height: 36,
                  child: Center(child: Text("Recipe")),
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Stack(children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.pexels.com/photos/769289/pexels-photo-769289.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                        fit: BoxFit.cover)),
              ),
            ])
          ],
        ),
      ),
    );
  }

  _ProfileFollowersSection() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ProfileFollowersNumberSection(
              title: "Recipe",
              count: "3",
            ),
            ProfileFollowersNumberSection(
              title: "Videos",
              count: "13",
            ),
            ProfileFollowersNumberSection(
              title: "Followers",
              count: "14K",
            ),
            ProfileFollowersNumberSection(
              title: "Following",
              count: "120",
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Column _EditProfileSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/1310522/pexels-photo-1310522.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            ),
            CustomButton(
              text: "Edit Profile",
              backgroundColor: ColorConstants.mainWhite,
              fontcolor: ColorConstants.primaryColor,
              height: 36,
              width: 107,
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          "Alessandra Blair",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          width: 256,
          child: Text(
            "Hello world I’m Alessandra Blair, I’m from Italy 🇮🇹 I love cooking so much!",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: ColorConstants.fontGray),
          ),
        ),
      ],
    );
  }
}
