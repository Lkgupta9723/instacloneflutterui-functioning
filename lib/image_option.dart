import 'package:flutter/material.dart';
import 'package:instagramclone/provider/image_provider.dart';
import 'package:provider/provider.dart';

class ImageOption extends StatefulWidget {
  const ImageOption({super.key});

  @override
  State<ImageOption> createState() => _ImageOptionState();
}

class _ImageOptionState extends State<ImageOption> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ImageProviderController>(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              'Profile Photo',
              style: TextStyle(
                fontFamily: 'SFProText',
                fontWeight: FontWeight.w600,
                fontSize: 22,
                letterSpacing: 0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Row(
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        provider.pickImageFromCamera();
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/icons/Camera.png',
                            color: Colors.blue,
                            height: 25,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Camera',
                      style: TextStyle(
                          fontFamily: 'SFProText',
                          color: Colors.black.withOpacity(0.7)),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 25,
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        provider.pickImageFromGallery();
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),
                        ),
                        child: const Center(
                            child: Icon(
                          Icons.photo,
                          color: Colors.blue,
                          size: 30,
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Gallery',
                      style: TextStyle(
                          fontFamily: 'SFProText',
                          color: Colors.black.withOpacity(0.7)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
