// Future<String> encodeFile(File imageFile,String fileType) async {
//   List<String> items = [];
//   String exten=getFileExtension(imageFile..path).substring(1);
//
//   final mimeTypeData =
//   lookupMimeType(imageFile.path, headerBytes: [0xFF, 0xD8])!.split('/');
//   late List<int> imageBytes;
//   if (imageFile != null) {
//     imageBytes = await imageFile.readAsBytes();
//   }
//   print(imageBytes);
//   //String base64Image = base64.encode(imageBytes);
//
//   String base64Image="";
//   if(fileType=="video"){
//     base64Image = 'data:$fileType/$exten;base64,' +'${base64.encode(imageBytes)}';
//   }
//   else {
//     base64Image = 'data:$fileType/${mimeTypeData[1]};base64,' +
//         '${base64.encode(imageBytes)}';
//   }
//   return base64Image;
// }
