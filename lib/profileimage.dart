import 'package:flutter/material.dart';
import 'package:instagramclone/image_option.dart';
import 'package:instagramclone/provider/image_provider.dart';
import 'package:instagramclone/signup.dart';
import 'package:provider/provider.dart';

class ProfileImage extends StatefulWidget {
  const ProfileImage({super.key});

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  @override
  Widget build(BuildContext context) {
    print('karle jugad karle karle koi jugad');
    final provider =
        Provider.of<ImageProviderController>(context, listen: true);
    print(
        'karle jugad karle karle koi jugad, teri kuch nahi hona h tu muh ki khana h');
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          provider.showimage == null
              ? InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        enableDrag: true,
                        showDragHandle: true,
                        isDismissible: true,
                        isScrollControlled: true,
                        builder: (context) => ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const FractionallySizedBox(
                                heightFactor: 0.26,
                                child: ImageOption(),
                              ),
                            ));
                  },
                  child: Container(
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                    ),
                    child: Center(
                        child: Image.asset(
                      'assets/icons/Camera.png',
                      height: 30,
                      color: Colors.blue,
                    )),
                  ))
              : Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black)),
                  child: Consumer(builder: (context, value, child) {
                    return Stack(
                      fit: StackFit.expand,
                      children: [
                        CircleAvatar(
                          radius: 65,
                          backgroundColor: Colors.white,
                          child: Image.file(
                            provider.showimage!,
                            fit: BoxFit.fill,
                            height: 130,
                            width: 130,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  print('object');
                                  provider.removePickedImage();
                                });
                              },
                              icon: const Icon(Icons.cancel)),
                        ),
                      ],
                    );
                  }),
                ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const SignUp()));
              },
              child: Container(
                height: 44,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Update',
                    style:
                        TextStyle(color: Colors.white, fontFamily: 'SFProText'),
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
