
import 'package:flutter/material.dart';


Widget customText(
    {required String text,
      TextDirection? textDirection,
      TextAlign? textAlign,
      double ?fontSize,
      double? iconSize,
      double? lineesSpace,
      int? maxLines,
      FontWeight? fontWeight,
      Color? textColor,
      Color? iconColor,
      VoidCallback ?onTap,
      IconData? iconData,
      bool? isUnderLine,
    }) {
  return InkWell(
    onTap: onTap,
    child: Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          decoration:(isUnderLine??false)? TextDecoration.underline:TextDecoration.none,
          // fontFamily: fontFamily?? "almarai",
          color: textColor ?? Colors.black,
          height:  lineesSpace??1
      ),
    ),
  );
}

