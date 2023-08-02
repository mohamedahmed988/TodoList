
import 'package:flutter/material.dart';

class ApiResponse{
  int? statusCode;
  int? responseCode;
  bool? status;
  String? message;
  dynamic body;

  ApiResponse({ this.statusCode,this.status, this.body, this.message,this.responseCode});
  


}