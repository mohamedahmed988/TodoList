
import 'package:flutter/material.dart';

import '../constants/fontSize.dart';


class RoundedButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final FontWeight? fontWeight;
  final Color? btnColor, textColor,borderColor;

  final double? btnWidth,btnHeight, borderRadius,fontSize,padding,borderWidth;


  RoundedButton({this.onTap,this.padding, this.btnColor, this.textColor,this.fontSize, required this.text,
     this.borderColor,this.borderWidth,this.borderRadius,this.btnWidth,this.btnHeight, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: btnWidth ?? double.infinity ,
        height: btnHeight?? 50,
        padding: EdgeInsets.all(padding??16),
        decoration: BoxDecoration(
            color: btnColor == null ? Colors.transparent : btnColor,
            borderRadius: BorderRadius.all(Radius.circular(borderRadius??30)),
            border: Border.all(width: borderWidth ?? 1, color: borderColor ?? Colors.white )),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: fontSize??SIZE16,color: textColor,fontWeight:fontWeight?? FontWeight.normal),
          ),
        ),
      ),
    );
  }
}


