import 'package:flutter/material.dart';

class Discribed extends StatefulWidget {
  const Discribed({super.key});

  @override
  State<Discribed> createState() => _DiscribedState();
}

class _DiscribedState extends State<Discribed> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Birthdays',
              style: TextStyle(
                  fontFamily: 'SFProText',
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Providing your date of birth improves the features and ads you see and helps to keep the instagram community safe. You can find your date of birth in your personal information account settings.',
              style: TextStyle(fontFamily: "SFProText"),
            ),
          ),
        ],
      ),
    );
  }
}
