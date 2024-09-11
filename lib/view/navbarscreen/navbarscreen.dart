import 'package:flutter/material.dart';
import 'package:sample_app/utils/constants/color_constants.dart';
import 'package:sample_app/view/bookmarks_screen/bookmark_screens.dart';
import 'package:sample_app/view/create_recipe_screen/create_recipe_screen.dart';
import 'package:sample_app/view/homescreen/homescreen.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  int index = 0;
  List screens = [
    Homescreen(),
    BookmarkScreens(),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.amber[200],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CreateRecipeScreen(),
              ));
        },
        backgroundColor: ColorConstants.primaryColor,
        shape: CircleBorder(),
        child: Icon(
          Icons.add,
          color: ColorConstants.mainWhite,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            index = value;
            setState(() {});
          },
          currentIndex: index,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                "assets/images/Active.png",
                height: 50,
              ),
              icon: Image.asset(
                "assets/images/Inactive_home.png",
                height: 50,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
                activeIcon: Image.asset("assets/images/Active_book.png"),
                icon: Image.asset(
                  "assets/images/Inactive.png",
                ),
                label: ""),
            BottomNavigationBarItem(
                activeIcon: Image.asset("assets/images/Nav Bar Menu_act.png"),
                icon: Image.asset("assets/images/Inactive_not.png"),
                label: ""),
            BottomNavigationBarItem(
                activeIcon: Image.asset("assets/images/active_cont.png"),
                icon: Image.asset("assets/images/Inactive_cont.png"),
                label: ""),
          ]),
      body: screens[index],
    );
  }
}
