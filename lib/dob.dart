import 'package:flutter/material.dart';
import 'package:instagramclone/profileimage.dart';
import 'package:intl/intl.dart';

import 'discribed.dart';

class DateOfBirth extends StatefulWidget {
  const DateOfBirth({super.key});

  @override
  State<DateOfBirth> createState() => _DateOfBirthState();
}

DateTime? _selectDate;
TextEditingController dobcontroller = TextEditingController();

class _DateOfBirthState extends State<DateOfBirth> {
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
          ),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Image.asset(
              'assets/icons/cake.png',
              height: 100,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Add your date of birth',
            style: TextStyle(
                fontFamily: 'SFProText',
                fontSize: 23,
                fontWeight: FontWeight.w600),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Use your own date of birth, even if this account is for a business, a pet or something else. No one will see this unless you choose to share it.',
              style: TextStyle(fontFamily: 'SFProText'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          enableDrag: true,
                          isDismissible: true,
                          isScrollControlled: true,
                          builder: (context) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const FractionallySizedBox(
                                heightFactor: 0.5,
                                child: Discribed(),
                              ),
                            );
                          });
                    },
                    child: const Text(
                      'Why do I need to provide my date of birth?',
                      style: TextStyle(
                          fontFamily: 'SFProText', color: Colors.blue),
                    )),
                const Spacer()
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () async {
              await showDatePicker(
                      context: context,
                      initialDate: _selectDate == null
                          ? DateTime.now().subtract(const Duration(days: 3680))
                          : _selectDate!,
                      firstDate: DateTime(1920),
                      lastDate:
                          DateTime.now().subtract(const Duration(days: 3650)))
                  .then((value) {
                setState(() {
                  _selectDate = value;
                  dobcontroller.text =
                      DateFormat('dd MMMM yyyy').format(_selectDate!);
                  //  userValue['dob'] = _selectDate.toString();
                });
              });
            },
            child: SizedBox(
              height: 44,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: dobcontroller,
                  enabled: false,
                  readOnly: true,
                  decoration: const InputDecoration(
                    hintText: 'D.O.B',
                    hintStyle: TextStyle(
                        fontFamily: 'SFProText',
                        color: Colors.grey,
                        fontSize: 12),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: InkWell(
              onTap: () {
                _selectDate != null
                    ? Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ProfileImage()))
                    : ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(
                        'Enter Date of Birth',
                        style: TextStyle(fontFamily: 'SFProText'),
                      )));
              },
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
                child: const Center(
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
