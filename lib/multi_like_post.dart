import 'package:flutter/material.dart';

class multi_like extends StatefulWidget {
  const multi_like({super.key});

  @override
  State<multi_like> createState() => _multi_likeState();
}

class _multi_likeState extends State<multi_like> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13),
      child: Row(
        children: [
          Container(
            height: 44,
            width: 44,
            child: const Stack(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1469474968028-56623f02e42e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2074&q=80'),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: 16,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1505144808419-1957a94ca61e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1852&q=80'),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: RichText(
                text: const TextSpan(
                    text: 'kiero_d, zackjohn',
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
          ),
          const Spacer(),
          Image.network(
            'https://images.unsplash.com/photo-1470071459604-3b5ec3a7fe05?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1948&q=80',
            height: 44,
            width: 44,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
