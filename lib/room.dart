import 'package:flutter/material.dart';
import 'package:instagramclone/Profile_screen.dart';
import 'package:instagramclone/create_post_page.dart';
import 'package:instagramclone/homescreen.dart';
import 'package:instagramclone/likepage.dart';
import 'package:instagramclone/searchscreen.dart';

class RoomScreen extends StatefulWidget {
  const RoomScreen({super.key});

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

enum Roombottomtabs { home, search, createpost, like, profile }

class _RoomScreenState extends State<RoomScreen> {
  Roombottomtabs selectedEnum = Roombottomtabs.home;

  Widget showcurrentpage() {
    switch (selectedEnum) {
      case Roombottomtabs.home:
        return const HomeScreen();
      case Roombottomtabs.search:
        return const SearchScreen();
      case Roombottomtabs.createpost:
        return const Create_post_page();
      case Roombottomtabs.like:
        return const Likesceen();
      case Roombottomtabs.profile:
        return const ProfileScreen();
      default:
        return const HomeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: showcurrentpage(),
      bottomNavigationBar: Container(
        height: 45,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 26),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [home(), search(), createpost(), like(), profile()],
        ),
      ),
    );
  }

  Widget home() {
    return InkWell(
        onTap: () {
          setState(() {
            selectedEnum = Roombottomtabs.home;
          });
        },
        child: Image.asset(
          selectedEnum == Roombottomtabs.home
              ? 'assets/icons/home_icon_selected.png'
              : 'assets/icons/home_icon.png',
          height: 23.38,
          width: 22,
        ));
  }

  Widget search() {
    return InkWell(
        onTap: () {
          setState(() {
            selectedEnum = Roombottomtabs.search;
          });
        },
        child: Image.asset(
          selectedEnum == Roombottomtabs.search
              ? 'assets/icons/search_selected_icon.png'
              : 'assets/icons/search_icon.png',
          height: 23.38,
          width: 22,
        ));
  }

  Widget createpost() {
    return InkWell(
        onTap: () {
          // setState(() {
          //   selectedEnum = Roombottomtabs.createpost;
          // });
          showModalBottomSheet(
              context: context,
              enableDrag: true,
              isDismissible: true,
              isScrollControlled: true,
              builder: (context) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: const FractionallySizedBox(
                    heightFactor: 0.95,
                    child: Create_post_page(),
                  ),
                );
              });
        },
        child: Image.asset(
          'assets/icons/add_post_icon.png',
          height: 23.38,
          width: 22,
        ));
  }

  Widget like() {
    return InkWell(
        onTap: () {
          setState(() {
            selectedEnum = Roombottomtabs.like;
          });
        },
        child: Image.asset(
          selectedEnum == Roombottomtabs.like
              ? 'assets/icons/like_selected_icon.png'
              : 'assets/icons/like_icon.png',
          height: 23.38,
          width: 22,
        ));
  }

  Widget profile() {
    return InkWell(
      onTap: () {
        setState(() {
          selectedEnum = Roombottomtabs.profile;
        });
      },
      child: selectedEnum == Roombottomtabs.profile
          ? CircleAvatar(
              radius: 13.5,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 12.5,
                backgroundColor: Colors.white,
                child: Image.asset(
                  'assets/Oval.png',
                  height: 23,
                  width: 23,
                ),
              ),
            )
          : Image.asset(
              'assets/Oval.png',
              height: 23,
              width: 23,
            ),
    );
  }
}
