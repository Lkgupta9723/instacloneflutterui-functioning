import 'package:flutter/material.dart';
import 'package:instagramclone/otpapi.dart';

import 'network_calls.dart';

class PhoneApi extends StatefulWidget {
  const PhoneApi({super.key});

  @override
  State<PhoneApi> createState() => _PhoneApiState();
}

TextEditingController phonenumber = TextEditingController();
TextEditingController otp = TextEditingController();

class _PhoneApiState extends State<PhoneApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.keyboard_arrow_left),
          onPressed: () {
            otp.clear();
            Navigator.pop(context);
          },
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: Column(
          children: [
            const Spacer(),
            SizedBox(
              height: 84,
              width: double.infinity,
              child: Column(
                children: [
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
                            color: Colors.black.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/Instagramlogo.png',
            height: 50,
          ),
          const SizedBox(
            height: 39,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SizedBox(
              height: 60,
              child: TextField(
                onChanged: (v) {
                  setState(() {});
                },
                controller: phonenumber,
                style: const TextStyle(fontSize: 12),
                cursorColor: Colors.grey,
                keyboardType: TextInputType.number,
                maxLength: 10,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffF2F2F2).withOpacity(0.1),
                  hintText: 'Enter Mobile Number',
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
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: InkWell(
              onTap: () async {
                NetworkCalls().getOTP(mobile: phonenumber.text).then((value) {
                  if (value?.data['result'] == 'success') {
                    setState(() {});
                    print(value?.data);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const OtpApi()));
                  }
                });
              },
              child: Container(
                height: 44,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: phonenumber.text.length == 10
                      ? const Color(0XFF3797EF)
                      : Colors.grey,
                ),
                child: const Center(
                  child: Text(
                    'Send OTP',
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
        ],
      ),
    );
  }
}
