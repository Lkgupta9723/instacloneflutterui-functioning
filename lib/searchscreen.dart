// ignore_for_file: sort_child_properties_last, use_full_hex_values_for_flutter_colors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Map<String, dynamic>> tempimage = [];
  List<Map<String, dynamic>> images = [
    {
      'photo': [
        {
          'view': 'photo',
          'url':
              'https://images.unsplash.com/photo-1470071459604-3b5ec3a7fe05?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1948&q=80',
        },
      ],
      'type': 'IGTV'
    },
    {
      'photo': [
        {
          'view': 'photo',
          'url':
              'https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
        },
        {
          'view': 'photo',
          'url':
              'https://images.unsplash.com/photo-1472214103451-9374bd1c798e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80'
        },
        {
          'view': 'photo',
          'url':
              'https://images.unsplash.com/photo-1565118531796-763e5082d113?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80'
        }
      ],
      'type': 'Shop'
    },
    {
      'photo': [
        {
          'view': 'photo',
          'url':
              'https://plus.unsplash.com/premium_photo-1673264933212-d78737f38e48?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
        },
      ],
      'type': 'Style'
    },
    {
      'photo': [
        {
          'view': 'photo',
          'url':
              'https://plus.unsplash.com/premium_photo-1675827055694-010aef2cf08f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=412&q=80',
        },
      ],
      'type': 'Sports'
    },
    {
      'photo': [
        {
          'view': 'photo',
          'url':
              'https://images.unsplash.com/photo-1505144808419-1957a94ca61e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1852&q=80',
        },
      ],
      'type': 'Auto'
    },
    {
      'photo': [
        {
          'view': 'photo',
          'url':
              'https://images.unsplash.com/photo-1433086966358-54859d0ed716?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
        },
      ],
      'type': 'nature'
    },
    {
      'photo': [
        {
          'view': 'photo',
          'url':
              'https://images.unsplash.com/photo-1505765050516-f72dcac9c60e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
        },
      ],
      'type': 'IGTV'
    },
    {
      'photo': [
        {
          'view': 'photo',
          'url':
              'https://images.unsplash.com/photo-1439853949127-fa647821eba0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
        },
      ],
      'type': 'Shop'
    },
    {
      'photo': [
        {
          'view': 'photo',
          'url':
              'https://images.unsplash.com/photo-1682687982093-4773cb0dbc2e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
        },
      ],
      'type': 'Style'
    },
    {
      'photo': [
        {
          'view': 'photo',
          'url':
              'https://images.unsplash.com/photo-1431794062232-2a99a5431c6c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
        },
      ],
      'type': 'Sports'
    },
    {
      'photo': [
        {
          'view': 'photo',
          'url':
              'https://images.unsplash.com/photo-1444491741275-3747c53c99b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80'
        },
        {
          'view': 'photo',
          'url':
              'https://images.unsplash.com/photo-1587280501635-68a0e82cd5ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80'
        },
        {
          'view': 'photo',
          'url':
              'https://images.unsplash.com/photo-1628779238951-be2c9f2a59f4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80'
        },
      ],
      'type': 'Sports'
    },
  ];
  List<Map<String, dynamic>> tags = [
    {'image': Icons.tv, 'name': 'IGTV'},
    {'image': Icons.shop, 'name': 'Shop'},
    {'image': null, 'name': 'Style'},
    {'image': null, 'name': 'Sports'},
    {'image': null, 'name': 'Auto'},
    {'image': null, 'name': 'nature'}
  ];

  @override
  void initState() {
    for (var element in images) {
      tempimage.add(element);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 88),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 36,
                        child: TextField(
                          cursorColor: Colors.grey,
                          onChanged: (v) {
                            setState(() {
                              tempimage = [];
                              for (var element in images) {
                                tempimage.add(element);
                              }
                              tempimage.retainWhere((element) {
                                return element['type']
                                    .toString()
                                    .toLowerCase()
                                    .contains(v.toLowerCase());
                              });
                            });
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor:
                                const Color(0xff7676680).withOpacity(0.12),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black.withOpacity(0.5),
                              size: 20,
                            ),
                            hintText: 'search',
                            contentPadding: EdgeInsets.zero,
                            hintStyle: const TextStyle(
                                fontFamily: 'SFProText', fontSize: 16),
                            focusedBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(color: Colors.black)),
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(color: Colors.black)),
                            disabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(color: Colors.black)),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Image.asset(
                        'assets/icons/Shape.png',
                        height: 20,
                        width: 20,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: tags.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            tempimage = [];
                            for (var element in images) {
                              tempimage.add(element);
                            }
                            tempimage.retainWhere((element) {
                              // print(element['type'] == tags[index]['name']);
                              return element['type'] == tags[index]['name'];
                            });
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 7),
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 3),
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color:
                                    const Color(0xff3C3C43).withOpacity(0.18),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (tags[index]['image'] != null)
                                  Icon(tags[index]['image'], size: 15),
                                Padding(
                                  padding: const EdgeInsets.only(left: 6),
                                  child: Text(
                                    tags[index]['name'],
                                    style: const TextStyle(
                                        fontFamily: 'SFProText',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff262626)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
              childAspectRatio: 1),
          itemCount: tempimage.length,
          itemBuilder: (context, index) {
            return Container(
              height: double.infinity,
              width: double.infinity,

              //   child: images[index]['photo'].length > 1
              //       ? Container(
              //           child: Align(
              //             alignment: Alignment.topRight,
              //             child: Padding(
              //               padding: const EdgeInsets.all(8),
              //               child: Image.asset(
              //                 'assets/icons/Gallery Icon.png',
              //                 height: 17,
              //                 width: 17,
              //               ),
              //             ),
              //           ),
              //           decoration: BoxDecoration(
              //               image: DecorationImage(
              //                   image: NetworkImage(
              //                     images[index]['photo'][0]['url'],
              //                   ),
              //                   fit: BoxFit.fill)),
              //         )
              //       : Container(
              //           decoration: BoxDecoration(
              //               image: DecorationImage(
              //                   image: NetworkImage(
              //                     images[index]['photo'][0]['url'],
              //                   ),
              //                   fit: BoxFit.fill)),
              //         ),
              // );
              child: Visibility(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/icons/Gallery Icon.png',
                      height: 17,
                      width: 17,
                    ),
                  ),
                ),
                visible: tempimage[index]['photo'].length > 1,
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        tempimage[index]['photo'][0]['url'],
                      ),
                      fit: BoxFit.fill)),
            );
            // return images[index]['photo'].length > 0
            //     ? Image.network(
            //         images[index]['photo'][0]['url'],
            //         fit: BoxFit.fill,
            //       )
            //     : Container();
          },
        ),
      ),
    );
  }
}
