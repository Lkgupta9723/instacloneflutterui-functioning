import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';

import 'namepage.dart';

class PhonePageDesign extends StatefulWidget {
  const PhonePageDesign({super.key});

  @override
  State<PhonePageDesign> createState() => _PhonePageDesignState();
}

TextEditingController contactno = TextEditingController();

class _PhonePageDesignState extends State<PhonePageDesign> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size(double.infinity, 58),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new_outlined,
                          size: 15,
                        )),
                    const Spacer(),
                    Center(
                      child: Image.asset(
                        'assets/Instagramlogo.png',
                        height: 35,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const Spacer()
                  ],
                ),
              ],
            )),
        bottomNavigationBar: SizedBox(
            height: 100,
            child: Column(
              children: [
                const Spacer(),
                SizedBox(
                  height: 84,
                  width: double.infinity,
                  child: Column(children: [
                    Divider(
                        color: Colors.black.withOpacity(0.4), thickness: 0.5),
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
            Divider(
              color: Colors.black.withOpacity(0.4),
              thickness: 0.5,
            ),
            const Spacer(),
            Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black)),
                child: const Icon(
                  Icons.person_outline_outlined,
                  color: Colors.black,
                  size: 80,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Mobile Number',
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'SFProText',
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: TextField(
                onChanged: (v) {
                  setState(() {});
                },
                controller: contactno,
                keyboardType: TextInputType.number,
                maxLength: 10,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffF2F2F2).withOpacity(0.1),
                  counterText: '',
                  contentPadding: const EdgeInsets.only(left: 10, right: 10),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.black)),
                  disabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.black.withOpacity(0.5)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.black.withOpacity(0.5)),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Center(
                child: Text(
                  'You may receive SMS updates from instagram and can opt out at any time',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const NamePage()));
                },
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: contactno.text.length == 10
                          ? Colors.blue
                          : Colors.grey),
                  child: const Center(
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
