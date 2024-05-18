// ignore_for_file: unnecessary_string_interpolations, avoid_print, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:instagramclone/phonenumberpagedesign.dart';
import 'package:instagramclone/room.dart';
import 'package:firebase_auth/firebase_auth.dart';

// ignore: camel_case_types
class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

FirebaseAuth firebaseAuth = FirebaseAuth.instance;
TextEditingController emailController = TextEditingController();
TextEditingController passWordController = TextEditingController();

// ignore: camel_case_types
class _Login_pageState extends State<Login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.chevron_left_outlined),
      )),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //const Spacer(),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                child: Image.asset(
                  'assets/Instagramlogo.png',
                  height: 50,
                ),
              ),
            ),
            const SizedBox(
              height: 39,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                height: 44,
                child: TextField(
                  onChanged: (v) {
                    setState(() {});
                  },
                  controller: emailController,
                  style: const TextStyle(fontSize: 12),
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffF2F2F2).withOpacity(0.1),
                    hintText: 'Userid or Email',
                    hintStyle: TextStyle(
                        fontFamily: 'SFProText',
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.2),
                        fontSize: 14),
                    contentPadding: const EdgeInsets.only(left: 10, right: 10),
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black.withOpacity(0.5)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black.withOpacity(0.5)),
                    ),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black.withOpacity(0.5))),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                height: 44,
                child: TextField(
                  controller: passWordController,
                  style: const TextStyle(fontSize: 12),
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffF2F2F2).withOpacity(0.1),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                        fontFamily: 'SFProText',
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.2),
                        fontSize: 14),
                    contentPadding: const EdgeInsets.only(left: 10, right: 10),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black.withOpacity(0.5)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black.withOpacity(0.5)),
                    ),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black.withOpacity(0.5))),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 19,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forget Password',
                    style: TextStyle(
                        color: Color(0xff3797EF),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SFProText',
                        fontSize: 12),
                  )),
            ),
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: InkWell(
                onTap: () async {
                  final bool emailValid = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(emailController.text);
                  print('${emailController.text}');
                  print([emailValid, passWordController.text.length > 7]);

                  print('email');
                  try {
                    await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: emailController.text,
                        password: passWordController.text);
                    // ignore: use_build_context_synchronously
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const RoomScreen()),
                        (route) => true);
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'weak-password') {
                      setState(() {
                        passWordController.clear();
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(e.message ?? '')));
                    } else if (e.code == 'email-already-in-use') {
                      setState(() {
                        emailController.clear();
                        passWordController.clear();
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(e.message ?? '')));
                    } else {
                      setState(() {
                        emailController.clear();
                        passWordController.clear();
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(e.message ?? '')));
                    }
                  } catch (e) {
                    print(e);
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text('$e')));
                  }
                },
                // onTap: () {
                //   Navigator.of(context).push(
                //       MaterialPageRoute(builder: (context) => RoomScreen()));
                // },
                child: Container(
                  height: 44,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0XFF3797EF),
                  ),
                  child: const Center(
                    child: Text(
                      'Log in',
                      style: TextStyle(
                          fontFamily: 'SFProText',
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 14),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/pngegg.png',
                  height: 17,
                  width: 17,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Log in with Facebook',
                      style: TextStyle(
                          fontFamily: 'SFProText',
                          color: Color(0xff3797EF),
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ))
              ],
            ),
            const SizedBox(
              height: 41.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Divider(
                      height: 0.5,
                      color: Colors.black.withOpacity(0.20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.5, right: 30.5),
                  child: Text(
                    'OR',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: const Color(0xff000000).withOpacity(0.4)),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Divider(
                      height: 0.5,
                      color: Colors.black.withOpacity(0.2),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 41.5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'Don’t have an account?',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.4),
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          fontFamily: 'SFProText'),
                    ),
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const PhonePageDesign();
                        }));
                      },
                      child: const Text(
                        'Sign up.',
                        style: TextStyle(
                            color: Color(0XFF3797EF),
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            fontFamily: 'SFProText'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // const Spacer(),
            // SizedBox(
            //   height: 79,
            //   width: double.infinity,
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Divider(
            //         color: const Color(0xff3C3C43).withOpacity(0.29),
            //       ),
            //       const SizedBox(
            //         height: 20,
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.only(bottom: 8),
            //         child: Text(
            //           'Instagram от Facebook',
            //           style: TextStyle(
            //               fontFamily: 'SFProText',
            //               fontWeight: FontWeight.w400,
            //               fontSize: 12,
            //               color: Colors.black.withOpacity(0.4)),
            //         ),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
//   if (e.code == 'weak-password') {
                //     setState(() {
                //       passWordController.clear();
                //     });
                //     ScaffoldMessenger.of(context)
                //         .showSnackBar(SnackBar(content: Text(e.message ?? '')));
                //   } else if (e.code == 'email-already-in-use') {
                //     setState(() {
                //       emailController.clear();
                //       passWordController.clear();