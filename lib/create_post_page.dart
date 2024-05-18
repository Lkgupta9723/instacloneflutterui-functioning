// ignore_for_file: empty_catches, sized_box_for_whitespace, sort_child_properties_last, prefer_const_constructors

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// ignore: camel_case_types
class Create_post_page extends StatefulWidget {
  const Create_post_page({super.key});

  @override
  State<Create_post_page> createState() => _Create_post_pageState();
}

// ignore: camel_case_types
class _Create_post_pageState extends State<Create_post_page> {
  List<Map<String, dynamic>> chatMessages = [];

  List<Uint8List> showimages = [];
  ImagePicker imagePicker = ImagePicker();

  Future multiimage() async {
    try {
      List<XFile?> images = await imagePicker.pickMultiImage();
      // ignore: unused_local_variable
      for (var element in images) {
        if (images.isNotEmpty) {
          Uint8List image = await element!.readAsBytes();
          showimages.add(image);
        }
        setState(() {});
      }
    } catch (e) {}
  }

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          showimages.isEmpty
              ? Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10)),
                  child: Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        multiimage();
                      },
                      child: Icon(
                        Icons.add,
                        size: 70,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                )
              : Container(
                  height: 120,
                  width: double.infinity,
                  child: Expanded(
                    child: ListView.builder(
                      itemCount: showimages.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2),
                              child: Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: MemoryImage(showimages[index]),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: IconButton(
                                    alignment: Alignment.topRight,
                                    padding: EdgeInsets.zero,
                                    onPressed: () {
                                      showimages.removeAt(index);
                                      setState(() {});
                                    },
                                    icon: Icon(Icons.cancel),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: index == showimages.length - 1,
                              child: Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(10)),
                                child: IconButton(
                                  onPressed: () {
                                    multiimage();
                                  },
                                  icon: const Icon(
                                    Icons.add,
                                    color: Colors.blue,
                                    size: 50,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            child: TextField(
              controller: controller,
              maxLines: 4,
              minLines: 1,
              onChanged: (value) {
                setState(() {});
              },
              decoration: InputDecoration(
                hintText: 'Enter Caption here',
                hintStyle: TextStyle(fontFamily: 'SFProText'),
                focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.blue)),
                border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    borderSide:
                        BorderSide(color: Colors.blue.withOpacity(0.5))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide:
                        BorderSide(color: Colors.blue.withOpacity(0.3))),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide:
                        BorderSide(color: Colors.blue.withOpacity(0.5))),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            // child: Container(
            //   height: 50,
            //   child: Center(
            //     child: Text(
            //       'ADD POST',
            //       style:
            //           TextStyle(color: Colors.white, fontFamily: 'SFProText'),
            //     ),
            //   ),
            //   decoration: BoxDecoration(
            //       color: showimages.isEmpty && controller.text.trim().isEmpty
            //           ? Colors.grey
            //           : Colors.blue,
            //       borderRadius: BorderRadius.circular(10)),
            // ),
            child: showimages.isEmpty && controller.text.trim().isEmpty
                ? Container(
                    height: 50,
                    child: Center(
                      child: Text(
                        'ADD POST',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'SFProText'),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                  )
                : Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Center(
                        child: Text(
                          'ADD POST',
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'SFProText'),
                        ),
                      ),
                    ),
                  ),
          )
        ],
      ),
    );
  }
}
