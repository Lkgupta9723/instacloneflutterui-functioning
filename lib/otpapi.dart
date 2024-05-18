import 'package:flutter/material.dart';
import 'package:instagramclone/room.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:instagramclone/phoneapi.dart';
import 'network_calls.dart';

class OtpApi extends StatefulWidget {
  const OtpApi({super.key});

  @override
  State<OtpApi> createState() => _OtpApiState();
}

class _OtpApiState extends State<OtpApi> {
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
              height: 50,
              child: TextField(
                onChanged: (v) {
                  setState(() {});
                },
                controller: otp,
                style: const TextStyle(fontSize: 12),
                cursorColor: Colors.grey,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffF2F2F2).withOpacity(0.1),
                  hintText: 'OTP',
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
          InkWell(
            onTap: () {
              NetworkCalls()
                  .verifyOtp(mobile: phonenumber.text, otp: otp.text)
                  .then((value) {
                print(value);
                if (value?.data['result'] == 'success') {
                  SharedPreferences.getInstance().then((sharedValue) {
                    print(value?.data['token']);
                    sharedValue.setString('token', value?.data['token']);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const RoomScreen()));
                  });
                }
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 12),
              child: Container(
                height: 44,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: otp.text.length == 6 && phonenumber.text.length == 10
                      ? const Color(0XFF3797EF)
                      : Colors.grey,
                ),
                child: const Center(
                  child: Text(
                    'Verify',
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
