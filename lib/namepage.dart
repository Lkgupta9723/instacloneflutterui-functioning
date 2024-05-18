import 'package:flutter/material.dart';
import 'package:instagramclone/dob.dart';

class NamePage extends StatefulWidget {
  const NamePage({super.key});

  @override
  State<NamePage> createState() => _NamePageState();
}

TextEditingController name = TextEditingController();

class _NamePageState extends State<NamePage> {
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Enter User Name',
                style: TextStyle(
                    fontSize: 25,
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
                controller: name,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintText: 'Full name',
                  hintStyle: const TextStyle(
                      fontFamily: 'SFProText', color: Colors.grey),
                  filled: true,
                  fillColor: const Color(0xffF2F2F2).withOpacity(0.1),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Your name easily help to your friends to findout your Id',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: InkWell(
                onTap: () {
                  name.text.length >= 2
                      ? Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const DateOfBirth()))
                      : ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Enter Name')));
                },
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: name.text.length >= 2 ? Colors.blue : Colors.grey),
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
