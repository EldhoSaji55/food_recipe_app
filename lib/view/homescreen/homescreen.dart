import 'package:flutter/material.dart';
import 'package:sample_app/utils/constants/color_constants.dart';
import 'package:sample_app/view/global_widgets/custom_video_card.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            //Section 1 : Title Section & Search bar
            _titleSection(),

            //Section 2 : Trending Now Section
            _trendingNowSection()
          ],
        ),
      ),
    );
  }

  Column _trendingNowSection() {
    List<Map<int, String>> userrecipes = [
      {
        0: '4.5',
        1: '15:10',
        2: 'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        3: 'https://images.pexels.com/photos/1310522/pexels-photo-1310522.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        4: 'How to make sushi at home',
        5: 'Niki Samantha'
      },
      {
        0: '4.2',
        1: '12:05',
        2: 'https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        3: 'https://images.pexels.com/photos/943084/pexels-photo-943084.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        4: 'Quick and Easy Pasta Recipes',
        5: 'John Doe'
      },
      {
        0: '4.8',
        1: '18:30',
        2: 'https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=600',
        3: 'https://images.pexels.com/photos/1542085/pexels-photo-1542085.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        4: 'The Perfect Chocolate Cake',
        5: 'Alice Johnson'
      },
      {
        0: '3.9',
        1: '09:45',
        2: 'https://images.pexels.com/photos/1099680/pexels-photo-1099680.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        3: 'https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        4: 'Grilling Tips for Beginners',
        5: 'Michael Smith'
      },
      {
        0: '4.0',
        1: '14:22',
        2: 'https://images.pexels.com/photos/1279330/pexels-photo-1279330.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        3: 'https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        4: 'Healthy Breakfast Ideas',
        5: 'Samantha Lee'
      },
      {
        0: '4.7',
        1: '16:08',
        2: 'https://images.pexels.com/photos/958545/pexels-photo-958545.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        3: 'https://images.pexels.com/photos/1516680/pexels-photo-1516680.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        4: 'Making Homemade Ice Cream',
        5: 'Laura James'
      },
      {
        0: '4.3',
        1: '10:00',
        2: 'https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        3: 'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        4: 'Vegetarian Dishes for Dinner',
        5: 'James Patterson'
      },
      {
        0: '5.0',
        1: '20:15',
        2: 'https://images.pexels.com/photos/1640774/pexels-photo-1640774.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        3: 'https://images.pexels.com/photos/2381069/pexels-photo-2381069.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        4: 'BBQ Ribs with Special Sauce',
        5: 'Chris Brown'
      },
      {
        0: '4.1',
        1: '11:50',
        2: 'https://images.pexels.com/photos/769289/pexels-photo-769289.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        3: 'https://images.pexels.com/photos/1438081/pexels-photo-1438081.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        4: 'French Toast for Breakfast',
        5: 'Anna Bell'
      },
      {
        0: '4.6',
        1: '17:35',
        2: 'https://images.pexels.com/photos/1092730/pexels-photo-1092730.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        3: 'https://images.pexels.com/photos/3756679/pexels-photo-3756679.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        4: 'Classic Italian Pizza Making',
        5: 'David Wilson'
      },
    ];

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 12, right: 20),
          child: Row(
            children: [
              Text(
                "Trending Now 🔥",
                style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              Spacer(),
              Text(
                "See all",
                style: TextStyle(
                  color: ColorConstants.primaryColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.arrow_forward_outlined,
                color: ColorConstants.primaryColor,
              )
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),

        // Global Widget - Custom Video Card
        SizedBox(
          height: 254,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => SizedBox(
                      child: CustomVideoCard(
                    rating: userrecipes[index][0] ?? '',
                    videolength: userrecipes[index][1] ?? '',
                    bgurl: userrecipes[index][2] ?? '',
                    profileurl: userrecipes[index][3] ?? '',
                    dishdetails: userrecipes[index][4] ?? '',
                    postedby: userrecipes[index][5] ?? '',
                  )),
              separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                  ),
              itemCount: 10),
        )
      ],
    );
  }

  _titleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 30, left: 22, right: 22, bottom: 10),
          child: Text(
            "Find best recipes\nfor cooking",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: ColorConstants.mainBlack,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Search recipes",
                hintStyle: TextStyle(
                    color: ColorConstants.lightGray,
                    fontWeight: FontWeight.normal),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorConstants.lightGray),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorConstants.lightGray),
                    borderRadius: BorderRadius.circular(10)),
                prefixIcon: Icon(
                  Icons.search,
                  color: ColorConstants.lightGray,
                )),
          ),
        ),
      ],
    );
  }
}
