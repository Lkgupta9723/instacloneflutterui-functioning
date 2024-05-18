import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagramclone/get_started_screen.dart';
import 'package:instagramclone/loginaccounts.dart';
import 'package:instagramclone/profilePost.dart';
import 'package:instagramclone/profileUpdate.dart';

import 'editpofile.dart';
import 'network_calls.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with TickerProviderStateMixin {
  TabController? tabController;
  Map<String, dynamic>? ProfileDetails;
  List<Map<String, dynamic>> story = [
    {
      // 'Userimage': 'assets/icons/Add.png',
      'Username': 'New',
      'is live': false
    },
    {
      'Userimage':
          'https://plus.unsplash.com/premium_photo-1674507923625-90409acdb8d7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
      'Username': 'veer',
      'is live': true,
    },
    {
      'Userimage':
          'https://images.unsplash.com/photo-1650110002977-3ee8cc5eac91?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1937&q=80',
      'Username': 'Ramesh',
      'is live': false,
    },
    {
      'Userimage':
          'https://images.unsplash.com/photo-1665574435997-b0d77cede9ae?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
      'Username': 'Ram',
      'is live': false,
    },
    {
      'Userimage':
          'https://plus.unsplash.com/premium_photo-1674507923625-90409acdb8d7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
      'Username': 'veer',
      'is live': false,
    },
    {
      'Userimage':
          'https://images.unsplash.com/photo-1650110002977-3ee8cc5eac91?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1937&q=80',
      'Username': 'Ramesh',
      'is live': false,
    },
    {
      'Userimage':
          'https://images.unsplash.com/photo-1665574435997-b0d77cede9ae?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
      'Username': 'Ram',
      'is live': false,
    },
    {
      'Userimage':
          'https://plus.unsplash.com/premium_photo-1674507923625-90409acdb8d7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
      'Username': 'veer',
      'is live': false,
    },
    {
      'Userimage':
          'https://images.unsplash.com/photo-1650110002977-3ee8cc5eac91?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1937&q=80',
      'Username': 'Ramesh',
      'is live': false,
    },
    {
      'Userimage':
          'https://images.unsplash.com/photo-1665574435997-b0d77cede9ae?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
      'Username': 'Ram',
      'is live': true,
    },
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    NetworkCalls().getprofile().then((value) {
      ProfileDetails = value?.data;
      setState(() {});
    });
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
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(),
                  const SizedBox(
                    width: 80,
                  ),
                  Image.asset(
                    'assets/icons/Lock.png',
                    height: 12,
                    width: 9,
                  ),
                  const SizedBox(
                    width: 5.6,
                  ),
                  const Text(
                    'jacob_w',
                    style: TextStyle(
                        fontFamily: 'SFProText',
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          enableDrag: true,
                          isDismissible: true,
                          isScrollControlled: true,
                          builder: (context) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const FractionallySizedBox(
                                  heightFactor: 0.5, child: loginaccounts()),
                            );
                          });
                    },
                    child: const Icon(
                      Icons.keyboard_arrow_down_outlined,
                      weight: 12,
                      size: 20,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
            endDrawer: Drawer(
              // backgroundColor: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        FirebaseAuth.instance.signOut();
                        Navigator.pushAndRemoveUntil(context,
                            MaterialPageRoute(builder: (context) {
                          return const firstpage();
                        }), (p) {
                          return false;
                        });
                      },
                      child: const Text(
                        'LogOut',
                        style: TextStyle(color: Colors.black),
                      )),
                ],
              ),
            ),
            body: NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) {
                  return [
                    SliverList(
                        delegate: SliverChildListDelegate([headerpage()]))
                  ];
                },
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
                                child: const Icon(
                                  Icons.grid_on,
                                  size: 23,
                                )),
                          ),
                          Tab(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width / 2.2,
                              child: const Icon(
                                Icons.assignment_ind_outlined,
                                size: 24,
                              ),
                            ),
                          )
                        ]),
                    Expanded(
                      child: TabBarView(controller: tabController, children: [
                        profilePost(),
                        profileUpdate(),
                      ]),
                    ),
                  ],
                ))));
  }

  Widget headerpage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  height: 96,
                  width: 96,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffC7C7CC),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Padding(
                          padding: EdgeInsets.all(2),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/Lakshya.png'),
                            radius: 28,
                          )),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  '${ProfileDetails?['user']['name']}',
                  style: const TextStyle(
                    fontFamily: 'SFProText',
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const Column(
              children: [
                Text(
                  '54',
                  style: TextStyle(
                      fontFamily: 'SFProText',
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'Posts',
                  style: TextStyle(
                      fontFamily: 'SFProText',
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color(0xff262626),
                      letterSpacing: -0.1),
                ),
              ],
            ),
            const Column(
              children: [
                Text(
                  '834',
                  style: TextStyle(
                      fontFamily: 'SFProText',
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'Followers',
                  style: TextStyle(
                      fontFamily: 'SFProText',
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color(0xff262626),
                      letterSpacing: -0.1),
                ),
              ],
            ),
            const Column(
              children: [
                Text(
                  '162',
                  style: TextStyle(
                      fontFamily: 'SFProText',
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'Following',
                  style: TextStyle(
                      fontFamily: 'SFProText',
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color(0xff262626),
                      letterSpacing: -0.1),
                ),
              ],
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'lakshya9723@gmail.com',
            style: TextStyle(
              fontFamily: 'SFProText',
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const Row(
          children: [
            SizedBox(
              width: 30,
            ),
            Text(
              'Digital goodies designer @pixsellz \nEverything is designed.',
              style: TextStyle(
                  fontFamily: 'SFProText',
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            height: 40,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const EditProfile()));
                    },
                    child: const Text('Edit data'))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: story.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 2),
                      child: Container(
                        height: 75,
                        width: 90,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey)),
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2),
                              child: index == 0
                                  ? const CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Icon(Icons.add),
                                    )
                                  : CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          story[index]['Userimage']),
                                      radius: 28,
                                    ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      story[index]['Username'],
                      style: const TextStyle(
                          fontFamily: 'SFProText',
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
