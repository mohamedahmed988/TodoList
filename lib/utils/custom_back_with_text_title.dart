import 'dart:io' show Platform;

import 'package:flutter/material.dart';

import '../constants/appColors.dart';
import '../constants/fontSize.dart';
import '../helper/custom_text.dart';


class CustomBackWithTextTitle extends StatelessWidget {

  final Color? iconColor;
  final Color? backGroundColor;
  final String title;
  final bool alignCenter;

  const CustomBackWithTextTitle({this.iconColor,this.backGroundColor, required this.title, this.alignCenter = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backGroundColor ?? whiteColor,
      padding: EdgeInsets.only(right: 16, bottom: 10,top: 10, left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: Icon(Platform.isAndroid ?
                //  ? Localizations.localeOf(context).languageCode == 'ar' ? Icons.arrow_forward_outlined :
              Icons.arrow_back_outlined :
               //   : Localizations.localeOf(context).languageCode == 'ar' ? Icons.arrow_forward_ios_outlined :
              Icons.arrow_back_outlined, color: iconColor ?? blackColor,size: 30,),
            ),
          ),
       if(!alignCenter)
         SizedBox(width: 32,),

          Expanded(
            child: customText(
                text: title,
                textAlign: alignCenter ? TextAlign.center : TextAlign.start,

                    textColor: iconColor ??blackColor,
                    fontSize: SIZE19,
                    fontWeight: FontWeight.w500)),
          if(alignCenter)
            SizedBox(width: 30,),
        ],
      ),
    );
  }
}
