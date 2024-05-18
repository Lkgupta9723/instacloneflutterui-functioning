import 'package:flutter/material.dart';

import 'likefollowing.dart';
import 'Likeyou.dart';

class Likesceen extends StatefulWidget {
  const Likesceen({super.key});

  @override
  State<Likesceen> createState() => _LikesceenState();
}

class _LikesceenState extends State<Likesceen> with TickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(
      initialIndex: 1,
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          TabBar(
              controller: tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.black,
              tabs: [
                Tab(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 2.2,
                    child: const Center(
                      child: Text(
                        'Following',
                        style: TextStyle(
                            fontFamily: 'SFProText',
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 2.2,
                    child: const Center(
                        child: Text(
                      'You',
                      style: TextStyle(
                          fontFamily: 'SFProText',
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                ),
              ]),
          Expanded(
            child: TabBarView(controller: tabController, children: [
              LikeFollowing(),
              LikeYou(),
            ]),
          )
        ],
      )),
    );
  }
}
