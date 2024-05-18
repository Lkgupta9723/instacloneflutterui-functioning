import 'package:flutter/material.dart';

class like_your_post extends StatefulWidget {
  const like_your_post({super.key});

  @override
  State<like_your_post> createState() => _like_your_postState();
}

class _like_your_postState extends State<like_your_post> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13),
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1469474968028-56623f02e42e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2074&q=80'),
            ),
            const SizedBox(
              width: 12,
            ),
            RichText(
                text: const TextSpan(
                    text: 'karennne',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'SFProText',
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                    children: [
                  TextSpan(
                    text: ' liked your photo',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'SFProText',
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  )
                ])),
            const Spacer(),
            Image.network(
              'https://images.unsplash.com/photo-1470071459604-3b5ec3a7fe05?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1948&q=80',
              height: 44,
              width: 44,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
