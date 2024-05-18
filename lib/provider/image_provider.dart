import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageProviderController extends ChangeNotifier {
  File? showimage;
  ImagePicker imagePicker = ImagePicker();
  Future pickImageFromCamera() async {
    print("imageleke too dikha");
    try {
      XFile? image1 = await imagePicker.pickImage(source: ImageSource.camera);

      if (image1 != null) showimage = File(image1.path);
      print(
          '---------------------------------------------------------------------------------------------------------------------------------------------\n');
      print('${showimage}');
    } catch (e) {}
    notifyListeners();
  }

  Future pickImageFromGallery() async {
    try {
      XFile? image1 = await imagePicker.pickImage(source: ImageSource.gallery);

      if (image1 != null) showimage = File(image1.path);
    } catch (e) {}
    notifyListeners();
  }
   void removePickedImage() {
    showimage = null;
    notifyListeners();
  }
}
