import 'package:flutter/material.dart';
import 'package:sample_app/dummy_db.dart';
import 'package:sample_app/view/global_widgets/custom_video_card.dart';

import 'package:sample_app/view/recipeDetailPage/recipeDetailPage.dart';

class BookmarkScreens extends StatelessWidget {
  const BookmarkScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.only(top: 30, left: 22, right: 22, bottom: 10),
            child: Text(
              "Saved recipes",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView.separated(
              itemBuilder: (context, index) => CustomVideoCard(
                    onCardTapped: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Recipedetailpage(
                                    title: DummyDb.trendingNowList[index]
                                        ["title"],
                                    rating: DummyDb.trendingNowList[index]
                                        ["rating"],
                                    bgurl: DummyDb.trendingNowList[index]
                                        ["imageurl"],
                                    profileurl: DummyDb.trendingNowList[index]
                                        ["profileurl"],
                                    postedby: DummyDb.trendingNowList[index]
                                        ["userName"],
                                  )));
                    },
                    width: double.infinity,
                    rating: DummyDb.trendingNowList[index]["rating"] ?? '',
                    videolength:
                        DummyDb.trendingNowList[index]["duration"] ?? '',
                    bgurl: DummyDb.trendingNowList[index]["imageurl"] ?? '',
                    profileurl:
                        DummyDb.trendingNowList[index]["profileurl"] ?? '',
                    dishdetails: DummyDb.trendingNowList[index]["title"] ?? '',
                    postedby: DummyDb.trendingNowList[index]["userName"] ?? '',
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 16,
                  ),
              itemCount: DummyDb.trendingNowList.length),
        ),
      ),
    );
  }
}
