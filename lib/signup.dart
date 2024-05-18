// ignore_for_file: unused_local_variable,

import 'dart:async';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:instagramclone/dob.dart';
import 'package:instagramclone/namepage.dart';
import 'package:instagramclone/phonenumberpagedesign.dart';
import 'package:instagramclone/provider/image_provider.dart';
import 'package:instagramclone/room.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

String imageUrl = '';

Map<String, dynamic> userData = {
  'name': name.text,
  'mobile': contactno.text,
  'dob': dobcontroller.text,
  'email': emailController2.text,
  'image': imageUrl
};

TextEditingController emailController2 = TextEditingController();
TextEditingController password = TextEditingController();

class _SignUpState extends State<SignUp> {
  bool verify = false;

  @override
  Widget build(BuildContext context) {
    final provider =
        Provider.of<ImageProviderController>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: const Icon(Icons.keyboard_arrow_left),
              onPressed: () {
                Navigator.pop(context);
              })),
      bottomNavigationBar: SizedBox(
          height: 100,
          child: Column(
            children: [
              const Spacer(),
              SizedBox(
                height: 84,
                width: double.infinity,
                child: Column(children: [
                  Divider(color: Colors.black.withOpacity(0.4), thickness: 0.5),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Instagram от Facebook ',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'SFProText',
                              color: Colors.black.withOpacity(0.4)),
                        ),
                      ],
                    ),
                  )
                ]),
              )
            ],
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              'assets/Instagramlogo.png',
              height: 50,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SizedBox(
              height: 44,
              child: TextField(
                onChanged: (v) {
                  setState(() {});
                },
                controller: emailController2,
                style: const TextStyle(fontSize: 12),
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffF2F2F2).withOpacity(0.1),
                  hintText: 'Email',
                  hintStyle: TextStyle(
                      fontFamily: 'SFProText',
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.2),
                      fontSize: 14),
                  contentPadding: const EdgeInsets.only(left: 10, right: 10),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
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
                onChanged: (v) {
                  setState(() {});
                },
                controller: password,
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
                    borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
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
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: InkWell(
              onTap: () async {
                print(
                    '----------------------------------------vickey---------------------------------------');
                final bool emailValid = RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    .hasMatch(emailController2.text);
                print(
                    '------------------------------------------dj-------------------------------------------');
                if (password.text.length > 7 && emailValid == true) {
                  print('------------------chalo kiya enter---------------');
                  try {
                    await FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                            email: emailController2.text,
                            password: password.text)
                        .then((value) {
                      FirebaseAuth.instance.currentUser
                          ?.sendEmailVerification()
                          .then((value) {
                        print('hello');
                        Timer timer = Timer.periodic(const Duration(seconds: 2),
                            (timer) async {
                          await FirebaseAuth.instance.currentUser?.reload();
                          if (FirebaseAuth
                                  .instance.currentUser?.emailVerified ??
                              false) {
                            timer.cancel();

                            if(provider.showimage!=null){
                              String uniqueFileName = DateTime.now()
                                .millisecondsSinceEpoch
                                .toString();
                            Reference referenceRoot =
                                FirebaseStorage.instance.ref();
                            Reference referenceDirImages =
                                referenceRoot.child('images');
                            Reference referenceImageToUpload =
                                referenceDirImages.child(uniqueFileName);
                            try {
                              await referenceImageToUpload
                                  .putFile(File(provider.showimage!.path));
                              imageUrl =
                                  await referenceImageToUpload.getDownloadURL();
                            } catch (e) {
                              print('${e}');
                            }
                            }
                            FirebaseAuth.instance.currentUser
                                ?.updateDisplayName(userData['name']);
                            FirebaseFirestore.instance
                                .collection('users')
                                .doc(FirebaseAuth.instance.currentUser!.uid)
                                .set(userData)
                                .then((value) {
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(builder: (context) {
                                return const RoomScreen();
                              }), (route) => false);
                            });
                          }
                        });
                      });
                    });
                  } catch (e) {
                    print('${e}');
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(e.toString())));
                  }
                }
              },
              child: Container(
                height: 44,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0XFF3797EF),
                ),
                child: Center(
                    child: verify == false
                        ? const Text(
                            'Sign up',
                            style: TextStyle(
                                fontFamily: 'SFProText',
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 14),
                          )
                        : const Text(
                            'Verifying...',
                            style: TextStyle(
                              fontFamily: 'SFProText',
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          )),
              ),
            ),
          ),
          const SizedBox(
            height: 37,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/pngegg.png',
                height: 17,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Sign up with Facebook',
                style: TextStyle(color: Color(0xff3797EF)),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const Expanded(child: Divider()),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: Text(
                  'OR',
                  style: TextStyle(
                      color: Colors.black.withOpacity(
                        0.4,
                      ),
                      fontSize: 12),
                ),
              ),
              const Expanded(child: Divider())
            ],
          ),
        ],
      ),
    );
  }
}
