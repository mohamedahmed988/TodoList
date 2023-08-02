import 'dart:convert';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:mime/mime.dart';
import 'package:flutter_native_image/flutter_native_image.dart';
import 'package:video_compress/video_compress.dart';


Future<File?> pickImage({required ImageSource source}) async {
  final picker = ImagePicker();
  final pickedFile = await picker.getImage(
      source: source,
      imageQuality: 50);
  return File(pickedFile!.path);
}

String getImageName({required File image}) {
  return image.path.split('/').last;
}
String getImageMimeType({required File image}){
  final mimeTypeData =
  lookupMimeType(image.path, headerBytes: [0xFF, 0xD8])!.split('/');
  return mimeTypeData[1];
}

Future<String> encodeFile(File imageFile,String fileType) async {
  List<String> items = [];
  final mimeTypeData =
  lookupMimeType(imageFile.path, headerBytes: [0xFF, 0xD8])!.split('/');
  late List<int> imageBytes;
  if (imageFile != null) {
    imageBytes = await imageFile.readAsBytes();
  }
  print(imageBytes);
  String base64Image = base64.encode(imageBytes);
  // String base64Image = 'data:image/${mimeTypeData[1]};base64,' +'${base64.encode(imageBytes)}';
  return base64Image;
}
Future<File> imageResize(File file) async {
  ImageProperties properties = await FlutterNativeImage.getImageProperties(file.path);
  File compressedFile = await FlutterNativeImage.compressImage(file.path, quality: 96,
      targetWidth: 750,
      targetHeight: (properties.height! * 750 / properties.width!).round());
  return compressedFile;
}


Future<File>videoResize(File file) async {
  MediaInfo? mediaInfo = await VideoCompress.compressVideo(
    file.path,
    quality: VideoQuality.LowQuality,
    deleteOrigin: false, // It's false by default
  );
  print("filesize: ${mediaInfo!.filesize!}");
  return mediaInfo!.file!;
}