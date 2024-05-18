// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class profilePost extends StatefulWidget {
  const profilePost({super.key});

  @override
  State<profilePost> createState() => _profilePostState();
}

class _profilePostState extends State<profilePost> {
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
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
          childAspectRatio: 1),
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Container(
          height: double.infinity,
          width: double.infinity,
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
            visible: images[index]['photo'].length > 1,
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    images[index]['photo'][0]['url'],
                  ),
                  fit: BoxFit.fill)),
        );
      },
    );
  }
}
