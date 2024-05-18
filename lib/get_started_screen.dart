import 'package:flutter/material.dart';
import 'package:instagramclone/phonenumber.dart';
import 'package:instagramclone/loginpage.dart';
import 'package:instagramclone/phoneapi.dart';
import 'package:instagramclone/phonenumberpagedesign.dart';



class firstpage extends StatefulWidget {
  const firstpage({super.key});

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
            child: Container(
              child: Image.asset(
                'assets/Instagramlogo.png',
                height: 50,
              ),
            ),
          ),
          const SizedBox(
            height: 52,
          ),
          Center(
            child: Container(
              height: 85,
              width: 85,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage('assets/Oval.png'))),
              // child: Image.asset(
              //   'assets/Oval.png',
              //   height: 85,
              //   width: 85,
              // ),
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          Center(
            child: Container(
              child: const Text(
                'jacob_w',
                style: TextStyle(
                    fontFamily: 'SFProText',
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Login_page()));
              },
              child: Container(
                height: 44,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0XFF3797EF),
                ),
                child: const Center(
                  child: Text(
                    'Log in with Email',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 14),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PhoneNumber()));
              },
              child: Container(
                height: 44,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0XFF3797EF),
                ),
                child: const Center(
                  child: Text(
                    'Log in with phone number',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 14),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const PhoneApi()));
              },
              child: Container(
                height: 44,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0XFF3797EF),
                ),
                child: const Center(
                  child: Text(
                    'Log in with phone number api',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 14),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Switch accounts',
                style: TextStyle(
                    color: Color(0XFF3797EF),
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
            ),
          ),
          const Spacer(),
          Divider(
            color: Colors.black.withOpacity(0.3),
            thickness: 0.5,
          ),
        ],
      ),
      bottomNavigationBar: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(
              'Don’t have an account?',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.4),
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
            ),
          ),
          Container(
            child: TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => const PhonePageDesign()));
              },
              child: const Text(
                'Sign up.',
                style: TextStyle(
                    color: Color(0XFF262626),
                    fontWeight: FontWeight.w600,
                    fontSize: 12),
              ),
            ),
          ),
          const SizedBox(
            height: 52,
          ),
        ],
      ),
    );
  }
}
