// import 'dart:io';
// import 'package:image_picker/image_picker.dart';
// import 'dart:convert';
// import 'package:mime/mime.dart';
// final picker = ImagePicker();
//
// Future<PickedFile> takePhoto(int imageSource) async {
//   final pickedFile = await picker.getImage(
//       source: imageSource == 1 ? ImageSource.camera : ImageSource.gallery,
//       imageQuality: 50);
//   return pickedFile;
// }
//
//  Future<List<String>> encodeImage(File imageFile) async {
//   List<String> items = [];
// final mimeTypeData =
// lookupMimeType(imageFile.path, headerBytes: [0xFF, 0xD8]).split('/');
// List<int> imageBytes;
// if (imageFile != null) {
// imageBytes = await imageFile.readAsBytes();
// }
// print(imageBytes);
//  String base64Image = base64.encode(imageBytes);
// //String base64Image = 'data:image/${mimeTypeData[1]};base64,' +'${base64.encode(imageBytes)}';
//
//    items.add(mimeTypeData[1]);
//    items.add(base64Image);
// return items;
// }