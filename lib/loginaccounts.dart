import 'package:flutter/material.dart';

class loginaccounts extends StatefulWidget {
  const loginaccounts({super.key});

  @override
  State<loginaccounts> createState() => _loginaccountsState();
}

class _loginaccountsState extends State<loginaccounts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Accounts'),
      ),
    );
  }
}
