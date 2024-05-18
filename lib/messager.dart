import 'package:flutter/material.dart';

class Messanger extends StatefulWidget {
  const Messanger({super.key});

  @override
  State<Messanger> createState() => _MessangerState();
}

class _MessangerState extends State<Messanger> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Messenger'),
      ),
    );
  }
}
