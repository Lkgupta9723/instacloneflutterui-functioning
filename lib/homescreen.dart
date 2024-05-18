// ignore_for_file: sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:instagramclone/cameracreen.dart';
import 'package:instagramclone/messager.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

PageController pageController = PageController();
int pagecount = 1;
AutoScrollController autoScrollController = AutoScrollController();

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> story = [
    {
      'Userimage': 'assets/Lakshya.png',
      'Username': 'Your story',
      'is live': false,
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
  List<Map<String, dynamic>> post = [
    {
      'UserProfile_image': 'assets/Lakshya.png',
      'UserProfile_name': 'Lakshya',
      'UserLocation': 'Jaipur, Rajasthan',
      'verified': true,
      'files': [
        {
          'image': 'image',
          'url':
              'https://plus.unsplash.com/premium_photo-1668896123985-edc26d57cab3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1679679008383-6f778fe07828?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1854&q=80',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1727&q=80',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1965&q=80',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1492446845049-9c50cc313f00?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1520880867055-1e30d1cb001c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1961&q=80',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1523464862212-d6631d073194?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
          'thumbnail': '',
        },
      ],
      'liked': true,
      'like_count': '1001',
      'comment': true,
      'saved': true,
      'caption':
          ' Kuch nahi hona tera coding m, himalaye jane \nki tyari karle',
      'recently_liked_by': [
        {
          'liked_userimage':
              'https://plus.unsplash.com/premium_photo-1680184592658-684aa03ea9dd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
          'liked_username': 'Sharma_Agarwal',
        }
      ]
    },
    {
      'UserProfile_image': 'assets/Lakshya.png',
      'UserProfile_name': 'Lakshya',
      'UserLocation': 'Jaipur',
      'verified': true,
      'files': [
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1552058544-f2b08422138a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1899&q=80',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1505144808419-1957a94ca61e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1852&q=80',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1505765050516-f72dcac9c60e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
          'thumbnail': '',
        }
      ],
      'liked': true,
      'like_count': '1001',
      'comment': true,
      'saved': true,
      'caption': ' Kuch nahi hona tera coding m \nhimalaye jane ki tyari karle',
      'recently_liked_by': [
        {
          'liked_userimage':
              'https://plus.unsplash.com/premium_photo-1680184592658-684aa03ea9dd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
          'liked_username': 'Sharma_Agarwal',
        }
      ]
    },
    {
      'UserProfile_image': 'assets/Lakshya.png',
      'UserProfile_name': 'Lakshya',
      'UserLocation': 'Jaipur',
      'verified': true,
      'files': [
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1505144808419-1957a94ca61e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1852&q=80',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1505144808419-1957a94ca61e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1852&q=80',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1505765050516-f72dcac9c60e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
          'thumbnail': '',
        }
      ],
      'liked': true,
      'like_count': '1001',
      'comment': true,
      'saved': true,
      'caption': ' Kuch nahi hona tera coding m \nhimalaye jane ki tyari karle',
      'recently_liked_by': [
        {
          'liked_userimage':
              'https://plus.unsplash.com/premium_photo-1680184592658-684aa03ea9dd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
          'liked_username': 'Sharma_Agarwal',
        }
      ]
    },
    {
      'UserProfile_image': 'assets/Lakshya.png',
      'UserProfile_name': 'Lakshya',
      'UserLocation': 'Jaipur',
      'verified': true,
      'files': [
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1555952517-2e8e729e0b44?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1505144808419-1957a94ca61e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1852&q=80',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1505765050516-f72dcac9c60e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
          'thumbnail': '',
        }
      ],
      'liked': true,
      'like_count': '1001',
      'comment': true,
      'saved': true,
      'caption': ' Kuch nahi hona tera coding m \nhimalaye jane ki tyari karle',
      'recently_liked_by': [
        {
          'liked_userimage':
              'https://plus.unsplash.com/premium_photo-1680184592658-684aa03ea9dd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
          'liked_username': 'Sharma_Agarwal',
        }
      ]
    },
    {
      'UserProfile_image': 'assets/Lakshya.png',
      'UserProfile_name': 'Lakshya',
      'UserLocation': 'Jaipur',
      'verified': true,
      'files': [
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1505144808419-1957a94ca61e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1852&q=80',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1505765050516-f72dcac9c60e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
          'thumbnail': '',
        }
      ],
      'liked': true,
      'like_count': '1001',
      'comment': true,
      'saved': true,
      'caption': ' Kuch nahi hona tera coding m \nhimalaye jane ki tyari karle',
      'recently_liked_by': [
        {
          'liked_userimage':
              'https://plus.unsplash.com/premium_photo-1680184592658-684aa03ea9dd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
          'liked_username': 'Sharma_Agarwal',
        }
      ]
    },
    {
      'UserProfile_image': 'assets/Lakshya.png',
      'UserProfile_name': 'Lakshya',
      'UserLocation': 'Jaipur',
      'verified': true,
      'files': [
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1888&q=80',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1505144808419-1957a94ca61e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1852&q=80',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1505765050516-f72dcac9c60e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
          'thumbnail': '',
        }
      ],
      'liked': true,
      'like_count': '1001',
      'comment': true,
      'saved': true,
      'caption': ' Kuch nahi hona tera coding m \nhimalaye jane ki tyari karle',
      'recently_liked_by': [
        {
          'liked_userimage':
              'https://plus.unsplash.com/premium_photo-1680184592658-684aa03ea9dd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
          'liked_username': 'Sharma_Agarwal',
        }
      ]
    },
    {
      'UserProfile_image': 'assets/Lakshya.png',
      'UserProfile_name': 'Lakshya',
      'UserLocation': 'Jaipur',
      'verified': true,
      'files': [
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1475924156734-496f6cac6ec1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1505144808419-1957a94ca61e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1852&q=80',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1505765050516-f72dcac9c60e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
          'thumbnail': '',
        }
      ],
      'liked': true,
      'like_count': '1001',
      'comment': true,
      'saved': true,
      'caption': ' Kuch nahi hona tera coding m \nhimalaye jane ki tyari karle',
      'recently_liked_by': [
        {
          'liked_userimage':
              'https://plus.unsplash.com/premium_photo-1680184592658-684aa03ea9dd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
          'liked_username': 'Sharma_Agarwal',
        }
      ]
    },
    {
      'UserProfile_image': 'assets/Lakshya.png',
      'UserProfile_name': 'Lakshya',
      'UserLocation': 'Jaipur',
      'verified': true,
      'files': [
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1469474968028-56623f02e42e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2074&q=80',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1505144808419-1957a94ca61e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1852&q=80',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1505765050516-f72dcac9c60e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
          'thumbnail': '',
        }
      ],
      'liked': true,
      'like_count': '1001',
      'comment': true,
      'saved': true,
      'caption': ' Kuch nahi hona tera coding m \nhimalaye jane ki tyari karle',
      'recently_liked_by': [
        {
          'liked_userimage':
              'https://plus.unsplash.com/premium_photo-1680184592658-684aa03ea9dd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
          'liked_username': 'Sharma_Agarwal',
        }
      ]
    },
    {
      'UserProfile_image': 'assets/Lakshya.png',
      'UserProfile_name': 'Lakshya',
      'UserLocation': 'Jaipur',
      'verified': true,
      'files': [
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1682687982093-4773cb0dbc2e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1505144808419-1957a94ca61e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1852&q=80',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1505765050516-f72dcac9c60e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
          'thumbnail': '',
        }
      ],
      'liked': true,
      'like_count': '1001',
      'comment': true,
      'saved': true,
      'caption': ' Kuch nahi hona tera coding m \nhimalaye jane ki tyari karle',
      'recently_liked_by': [
        {
          'liked_userimage':
              'https://plus.unsplash.com/premium_photo-1680184592658-684aa03ea9dd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
          'liked_username': 'Sharma_Agarwal',
        }
      ]
    },
  ];

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 12,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const CameraApp();
                      }));
                    },
                    child: Image.asset(
                      'assets/icons/Camera.png',
                      height: 22,
                      width: 24,
                    ),
                  ),
                  const Spacer(),
                  const SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Image.asset(
                      'assets/Instagramlogo.png',
                      height: 35,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'assets/icons/TV.png',
                      height: 25,
                      width: 24,
                    ),
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Messanger()));
                    },
                    child: Image.asset(
                      'assets/icons/Messanger.png',
                      height: 20,
                      width: 23,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                ],
              ),
              preferredSize: const Size(double.infinity, 44)),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              const Divider(),
              stories(),
              const Divider(),
              ListView.builder(
                itemCount: post.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      postheader(index),
                      postbody(index, screenWidth),
                      const SizedBox(
                        height: 13,
                      ),
                      posticonfooter(index),
                      const SizedBox(
                        height: 13.42,
                      ),
                      postlikefooter(index),
                      postcaptionfooter(index),
                    ],
                  );
                },
              ),
            ],
          )),
    );
  }

  Widget stories() {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: ListView.builder(
        itemCount: story.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 2),
                child: story[index]['is live'] == true
                    ? Container(
                        height: 75,
                        width: 90,
                        child: Stack(children: [
                          Container(
                            height: 75,
                            width: 90,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xffE20337),
                                    Color(0xffC60188),
                                    Color(0xff7700C3),
                                  ],
                                  begin: Alignment.bottomRight,
                                  end: Alignment.topLeft),
                            ),
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
                                      ? CircleAvatar(
                                          backgroundImage: AssetImage(
                                              story[index]['Userimage']),
                                          radius: 28,
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
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 16,
                              width: 26,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(2),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xffC90083),
                                    Color(0xffD22463),
                                    Color(0xffE10038)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'LIVE',
                                  style: TextStyle(
                                      fontFamily: 'SFProText',
                                      fontSize: 8,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ]),
                      )
                    : Container(
                        height: 75,
                        width: 90,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              colors: [
                                Color(0xffFBAA47),
                                Color(0xffD91A46),
                                Color(0xffA60f93),
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight),
                        ),
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
                                  ? CircleAvatar(
                                      backgroundImage:
                                          AssetImage(story[index]['Userimage']),
                                      radius: 28,
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
    );
  }

  Widget postheader(index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 11),
      child: Row(
        children: [
          CircleAvatar(
            radius: 16,
            backgroundImage: AssetImage(post[index]['UserProfile_image']),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    post[index]['UserProfile_name'],
                    style: const TextStyle(
                        fontFamily: 'SFProText',
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  if (post[index]['verified'] == true)
                    Image.asset(
                      'assets/icons/Bluetick.png',
                      height: 9.8,
                      width: 9.9,
                    )
                ],
              ),
              const SizedBox(
                height: 1,
              ),
              Text(
                post[index]['UserLocation'],
                style: const TextStyle(
                    fontFamily: 'SFProText',
                    fontWeight: FontWeight.w400,
                    fontSize: 11),
              )
            ],
          ),
          const Spacer(),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_horiz_outlined)),
        ],
      ),
    );
  }

  Widget postbody(index, screenWidth) {
    return Container(
        height: screenWidth,
        width: double.infinity,
        child: Stack(children: [
          PageView.builder(
              controller: pageController,
              onPageChanged: (v) {
                setState(() {
                  pagecount = v + 1;
                });
              },
              itemCount: post[index]['files'].length,
              allowImplicitScrolling: true,
              pageSnapping: true,
              scrollDirection: Axis.horizontal,
              // shrinkWrap: true,
              itemBuilder: ((context, index2) {
                return Row(
                  children: [
                    Image.network(
                      post[index]['files'][index2]['url'],
                      fit: BoxFit.fitWidth,
                      width: screenWidth,
                      height: screenWidth,
                    ),
                  ],
                );
              })),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
              child: Container(
                height: 26,
                width: 35,
                decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    '$pagecount/${post[index]['files'].length}',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          )
        ]));
  }

  Widget posticonfooter(index) {
    autoScrollController.scrollToIndex(pagecount - 1,
        preferPosition: AutoScrollPosition.middle);
    return Row(
      children: [
        const SizedBox(
          width: 15,
        ),
        InkWell(
          onTap: () {
            setState(() {
              post[index]['liked'] = !post[index]['liked'];
            });
          },
          child: post[index]['liked'] == true
              ? Image.asset(
                  'assets/icons/like_selected_icon.png',
                  width: 23.66,
                  height: 20.58,
                  color: Colors.red,
                )
              : Image.asset(
                  'assets/icons/like_icon.png',
                  width: 23.66,
                  height: 20.58,
                ),
        ),
        const SizedBox(
          width: 15,
        ),
        Image.asset(
          'assets/icons/Comment.png',
          width: 22,
          height: 22,
        ),
        const SizedBox(
          width: 15,
        ),
        Image.asset(
          'assets/icons/Messanger.png',
          width: 22,
          height: 22,
        ),
        const Spacer(),
        Container(
          height: 6,
          width: 40,
          child: ListView.builder(
              itemCount: post[index]['files'].length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return AutoScrollTag(
                  key: ValueKey(index),
                  controller: autoScrollController,
                  index: index,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    child: pagecount - 1 == index
                        ? Container(
                            height: 6,
                            width: 6,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.blue),
                          )
                        : Container(
                            height: 6,
                            width: 6,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.grey),
                          ),
                  ),
                );
              }),
        ),
        const SizedBox(
          width: 50,
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            setState(() {
              post[index]['saved'] = !post[index]['saved'];
            });
          },
          child: post[index]['saved'] == true
              ? Image.asset(
                  'assets/icons/saveblue.png',
                  width: 21,
                  height: 24,
                  color: Colors.blue,
                )
              : Image.asset(
                  'assets/icons/Save.png',
                  width: 21,
                  height: 24,
                ),
        ),
        const SizedBox(
          width: 15,
        ),
      ],
    );
  }

  Widget postlikefooter(index) {
    return Row(
      children: [
        const SizedBox(
          width: 15.6,
        ),
        CircleAvatar(
          radius: 8.5,
          backgroundImage: NetworkImage(
              post[index]['recently_liked_by'][0]['liked_userimage']),
        ),
        const SizedBox(
          width: 6.5,
        ),
        RichText(
          text: TextSpan(
            text: 'Liked by ',
            style: const TextStyle(
                fontFamily: 'SFProText',
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Colors.black),
            children: [
              TextSpan(
                text: post[index]['recently_liked_by'][0]['liked_username'],
                style: const TextStyle(
                    fontFamily: 'SFProtext',
                    fontWeight: FontWeight.w600,
                    color: Color(0xff262626),
                    fontSize: 13),
              ),
              const TextSpan(
                text: ' and ',
                style: TextStyle(
                    fontFamily: 'SFProText',
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: Colors.black),
              ),
              TextSpan(
                text: post[index]['like_count'],
                style: const TextStyle(
                    fontFamily: 'SFProtext',
                    fontWeight: FontWeight.w600,
                    color: Color(0xff262626),
                    fontSize: 13),
              ),
              const TextSpan(
                text: ' others',
                style: TextStyle(
                    fontFamily: 'SFProtext',
                    fontWeight: FontWeight.w600,
                    color: Color(0xff262626),
                    fontSize: 13),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget postcaptionfooter(index) {
    return Row(
      children: [
        const SizedBox(
          width: 15.6,
        ),
        RichText(
            text: TextSpan(
                text: post[index]['UserProfile_name'],
                style: const TextStyle(
                    color: Color(0xff262626),
                    fontFamily: 'SFProText',
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
                children: [
              TextSpan(
                  text: post[index]['caption'],
                  style: const TextStyle(
                      fontFamily: 'SFProText', fontWeight: FontWeight.w400))
            ]))
      ],
    );
  }
}
