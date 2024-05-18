import 'package:flutter/material.dart';
import 'package:instagramclone/multi_like_post.dart';
import 'package:instagramclone/some_one_like_your_post.dart';

class LikeYou extends StatefulWidget {
  const LikeYou({super.key});

  @override
  State<LikeYou> createState() => _LikeYouState();
}

class _LikeYouState extends State<LikeYou> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Container(
              height: 48,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Follow Requests',
                      style: TextStyle(
                          fontFamily: 'SFProText',
                          fontSize: 15,
                          color: Color(0xff262626),
                          fontWeight: FontWeight.w400),
                    )),
              ),
            ),
          ],
        ),
        const Divider(),
        newlike(),
        const Divider(),
        today(),
        const Divider(),
        thisWeek(),
        const Divider(),
        thisMonth(),
      ],
    );
  }

  Widget newlike() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text('New'),
          ),
          like_your_post(),
        ],
      ),
    );
  }

  Widget today() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text('Today'),
          ),
          multi_like(),
        ],
      ),
    );
  }

  Widget thisWeek() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text('This Week'),
          ),
        ],
      ),
    );
  }

  Widget thisMonth() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text('This Month'),
          ),
        ],
      ),
    );
  }
}
