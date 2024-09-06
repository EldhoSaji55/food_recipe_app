import 'package:flutter/material.dart';
import 'package:sample_app/dummy_db.dart';
import 'package:sample_app/utils/constants/color_constants.dart';
import 'package:sample_app/view/global_widgets/custom_video_card.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Section 1 : Title Section & Search bar
              _titleSection(),

              //Section 2 : Trending Now Section
              _trendingNowSection(),

              //Section 3: Popular Category
              _popularCategorySection()
            ],
          ),
        ),
      ),
    );
  }

  Widget _popularCategorySection() {
    return DefaultTabController(
      length: 6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 20),
            child: Text(
              "Popular Category",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.mainBlack),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          TabBar(
              isScrollable: true,
              padding: EdgeInsets.symmetric(horizontal: 20),
              dividerColor: Colors.transparent,
              tabAlignment: TabAlignment.start,
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
                Tab(
                  child: Text("Salad"),
                ),
                Tab(
                  child: Text("Breakfast"),
                ),
                Tab(
                  child: Text("Appetizer"),
                ),
                Tab(
                  child: Text("Noodle"),
                ),
                Tab(
                  child: Text("Lunch"),
                ),
                Tab(
                  child: Text("Dinner"),
                ),
              ]),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 235,
            child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => _categoryCard(
                      category:
                          DummyDb.popularCategoryList[index]["Salad"] ?? '',
                      avatarImage: DummyDb.popularCategoryList[index]
                              ["Avatarimage"] ??
                          '',
                      title: DummyDb.popularCategoryList[index]["Title"] ?? '',
                      time: DummyDb.popularCategoryList[index]["Time"] ?? '',
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                itemCount: 6),
          )
        ],
      ),
    );
  }

  Widget _trendingNowSection() {
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
          height: 256,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => SizedBox(
                      child: CustomVideoCard(
                    rating: DummyDb.trendingNowList[index]["rating"],
                    videolength: DummyDb.trendingNowList[index]["duration"],
                    bgurl: DummyDb.trendingNowList[index]["imageurl"],
                    profileurl: DummyDb.trendingNowList[index]["profileurl"],
                    dishdetails: DummyDb.trendingNowList[index]["title"],
                    postedby: DummyDb.trendingNowList[index]["userName"],
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

class _categoryCard extends StatelessWidget {
  String category;
  String avatarImage;
  String title;
  String time;
  _categoryCard({
    super.key,
    required this.category,
    required this.avatarImage,
    required this.title,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 231,
          width: 150,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 176,
            decoration: BoxDecoration(
                color: ColorConstants.neutralGray,
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 18,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Time",
                          style: TextStyle(
                              color: ColorConstants.lightGray,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            time,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                          CircleAvatar(
                            backgroundColor: ColorConstants.mainWhite,
                            radius: 12,
                            child: Icon(
                              Icons.bookmark_border,
                              size: 16,
                              color: ColorConstants.mainBlack,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          child: CircleAvatar(
            radius: 55,
            backgroundColor: ColorConstants.neutralGray,
            backgroundImage: NetworkImage(avatarImage),
          ),
        )
      ],
    );
  }
}
