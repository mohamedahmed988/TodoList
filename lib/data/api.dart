import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:Todo_app/data/sharedPreferences.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;

import '../constants/appConstants.dart';
import '../helper/error_text.dart';
import '../helper/helper.dart';
import '../models/api_response.dart';



class Api {
  static final String _endpoint = Uri.encodeFull(BASE_URL);

  static Future<ApiResponse> get(BuildContext context, String resource, {int timeout= 100000,
    Map<String, String>? header, Map<String, String>? queryParameters}) async {
    String language = await getString(LANGUAGE,DEFAULT_LANGUAGE);
    String token = await getString(TOKEN,'');
    var headers = header ?? {API_LANG: '$language-SA', AUTHORIZATION: 'Bearer $token'};
    try {

      Dio dio = new Dio(
        BaseOptions(
          baseUrl: Uri.encodeFull(_endpoint),
          connectTimeout: timeout,
          receiveTimeout: timeout,
          sendTimeout: timeout,
          headers: headers,
        ),
      );
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };

      Response response = await dio.get(Uri.encodeFull(resource),queryParameters: queryParameters);
      print("HEADER: ${headers.toString()}");
      print("URL: $resource");
      print("RESPONSE: $response");
      return _buildOut(context, response);
    } catch (_error) {
      DioError error = _error as DioError;
      print("HEADER: ${headers.toString()}");
      print("URL: $resource");
      print("ERROR: ${error.toString()}");
      if (error.response == null) {
        return _errorNoResponse(error);
      } else {
        return _buildOut(context, error.response!);
      }
    }
  }
  static Future<ApiResponse> getFullResponse(BuildContext context, String resource, {int timeout= 100000,
    Map<String, String>? header, Map<String, String>? queryParameters}) async {
    String language = await getString(LANGUAGE,DEFAULT_LANGUAGE);
    String token = await getString(TOKEN,'');
    var headers = header ?? {API_LANG: '$language-SA', AUTHORIZATION: 'Bearer $token'};
    try {

      Dio dio = new Dio(
        BaseOptions(
          baseUrl: Uri.encodeFull(_endpoint),
          connectTimeout: timeout,
          receiveTimeout: timeout,
          sendTimeout: timeout,
          headers: headers,
        ),
      );
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };

      Response response = await dio.get(Uri.encodeFull(resource),queryParameters: queryParameters);
      print("HEADER: ${headers.toString()}");
      print("URL: $resource");
      print("RESPONSE: $response");
      return _buildOut2(context, response);
    } catch (_error) {
      DioError error = _error as DioError;
      print("HEADER: ${headers.toString()}");
      print("URL: $resource");
      print("ERROR: ${error.toString()}");
      if (error.response == null) {
        return _errorNoResponse(error);
      } else {
        return _buildOut(context, error.response!);
      }
    }
  }

  static Future<ApiResponse> post(
      BuildContext context,
      String resource,
      {dynamic formData, Map<String, String>? header,int timeout= 160000}) async {
    String language = await getString(LANGUAGE,DEFAULT_LANGUAGE);
    String token = await getString(TOKEN,'');
    var headers = header ?? {API_LANG: '$language-SA', AUTHORIZATION: 'Bearer $token'};
    try {

      Dio dio = new Dio(
        BaseOptions(
          baseUrl: Uri.encodeFull(_endpoint),
          connectTimeout: timeout,
          receiveTimeout: timeout,
          sendTimeout: timeout,
          headers: headers,
        ),
      );
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };

     Response response = await dio.post(Uri.encodeFull(resource), data: formData,);

      print("URL: $resource");
      print("BODY: ${formData.toString()}");
      print("HEADER: ${headers.toString()}");
      print("RESPONSE: $response");
      return _buildOut(context, response);
    } catch (_error) {
      DioError error = _error as DioError;
      print("BODY: ${formData.toString()}");
      print("HEADER: ${headers.toString()}");
      print("URL: $resource");
      print("ERROR: ${error.toString()}");
      if (error.response == null) {
       // print(error.response.data);
        return _errorNoResponse(error);
      } else {
       // print(error.response.statusCode);
        return _buildOut(context, error.response!);
      }
    }
  }


  static Future<ApiResponse> postWithQuery(
      BuildContext context,
      String resource,
      {dynamic formData, Map<String, String>? header,Map<String, String>? queryParameters,int timeout= 180000}) async {
    String language = await getString(LANGUAGE,DEFAULT_LANGUAGE);
    String token = await getString(TOKEN,'');
    var headers = header ?? {API_LANG: '$language-SA', AUTHORIZATION: 'Bearer $token'};
    try {

      Dio dio = new Dio(
        BaseOptions(
          baseUrl: Uri.encodeFull(_endpoint),
          connectTimeout: timeout,
          receiveTimeout: timeout,
          sendTimeout: timeout,
          headers: headers,
        ),
      );
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };

      Response response = await dio.post(Uri.encodeFull(resource),queryParameters: queryParameters, data: formData,);

      print("URL: $resource");
      print("BODY: ${formData.toString()}");
      print("HEADER: ${headers.toString()}");
      print("RESPONSE: $response");
      return _buildOut(context, response);
    } catch (_error) {
      DioError error = _error as DioError;
      print("BODY: ${formData.toString()}");
      print("HEADER: ${headers.toString()}");
      print("URL: $resource");
      print("ERROR: ${error.toString()}");
      if (error.response == null) {
        // print(error.response.data);
        return _errorNoResponse(error);
      } else {
        // print(error.response.statusCode);
        return _buildOut(context, error.response!);
      }
    }
  }
  static Future<ApiResponse> postWithQuery2(
      BuildContext context,
      String resource,
      {dynamic formData, Map<String, String>? header,Map<String, String>? queryParameters,int timeout= 160000}) async {
    String language = await getString(LANGUAGE,DEFAULT_LANGUAGE);
    String token = await getString(TOKEN,'');
    var headers = header ?? {API_LANG: '$language-SA', AUTHORIZATION: 'Bearer $token'};
    try {

      Dio dio = new Dio(
        BaseOptions(
          baseUrl: Uri.encodeFull(_endpoint),
          connectTimeout: timeout,
          receiveTimeout: timeout,
          sendTimeout: timeout,
          headers: headers,
        ),
      );
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };

      Response response = await dio.post(Uri.encodeFull(resource),queryParameters: queryParameters, data: formData,);

      print("URL: $resource");
      print("BODY: ${formData.toString()}");
      print("HEADER: ${headers.toString()}");
      print("RESPONSE: $response");
      return _buildOut2(context, response);
    } catch (_error) {
      DioError error = _error as DioError;
      print("BODY: ${formData.toString()}");
      print("HEADER: ${headers.toString()}");
      print("URL: $resource");
      print("ERROR: ${error.toString()}");
      if (error.response == null) {
        // print(error.response.data);
        return _errorNoResponse(error);
      } else {
        // print(error.response.statusCode);
        return _buildOut(context, error.response!);
      }
    }
  }

  static Future<ApiResponse> postForResponseHtml(
      BuildContext context,
      String resource,
      {dynamic formData, Map<String, String>? header,Map<String, String>? queryParameters,int timeout= 60000}) async {
    String language = await getString(LANGUAGE,DEFAULT_LANGUAGE);
    String token = await getString(TOKEN,'');
    var headers = header ?? {API_LANG: '$language-SA', AUTHORIZATION: 'Bearer $token'};
    try {

      Dio dio = new Dio(
        BaseOptions(
          baseUrl: Uri.encodeFull(_endpoint),
          connectTimeout: timeout,
          receiveTimeout: timeout,
          sendTimeout: timeout,
          headers: headers,
        ),
      );
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };

      Response response = await dio.post(Uri.encodeFull(resource),queryParameters: queryParameters, data: formData,);

      print("URL: $resource");
      print("BODY: ${formData.toString()}");
      print("HEADER: ${headers.toString()}");
      print("RESPONSE: $response");
      return _buildOutForHtmlResponse(context, response);
    } catch (_error) {
      DioError error = _error as DioError;
      print("BODY: ${formData.toString()}");
      print("HEADER: ${headers.toString()}");
      print("URL: $resource");
      print("ERROR: ${error.toString()}");
      if (error.response == null) {
        // print(error.response.data);
        return _errorNoResponse(error);
      } else {
        // print(error.response.statusCode);
        return _buildOutForHtmlResponse(context, error.response!);
      }
    }
  }

  static ApiResponse _buildOut(BuildContext context, Response response) {
    ApiResponse apiResponse = new ApiResponse();
    if (response.statusCode == 200) {
      print("hello = ${response}");
    apiResponse.statusCode = response.statusCode!;
    if(response.data['responseCode']!=null)
      apiResponse.responseCode=response.data['responseCode'];
    apiResponse.status = response.data['status'];
    apiResponse.message = response.data['message'];
    apiResponse.body = response.data['results'];
    }
    else if(response.statusCode == 422 || response.statusCode == 404){
      if (response.data is Map<String, dynamic>) {
        Map<String, dynamic> responseBody = response.data;
        apiResponse.statusCode = response.statusCode!;
        apiResponse.status = response.data['status'];
        apiResponse.message = responseBody['results'] == null ? response.data["message"] : responseBody['results'].containsKey('errors')
            ? getErrorString(responseBody['results']['errors'])
            : response.data["message"];

       // apiResponse.body = response.data['data'];
      }
      else {
        apiResponse.statusCode = response.statusCode!;
        apiResponse.message = response.data.toString();
      }
    }

    else{
      apiResponse.statusCode = response.statusCode!;
      apiResponse.message = "there is an error";
    }

   /* else if (response.statusCode == 400) {
      Map<String, dynamic> review = {};
      response.data
          .forEach((element) => review[element['field']] = element['message']);
      apiResponse.setHttpResponse(new HttpResponseMessage(
        response.statusCode,
        message: "Review the fields to continue.",
      ));
    }
    else if (response.statusCode == 420) {
      apiResponse.setHttpResponse(new HttpResponseMessage(
        response.statusCode,
        message: response.data['message'],
      ));
    }
    else if (response.statusCode == 403) {
      apiResponse.setHttpResponse(new HttpResponseMessage(response.statusCode));
    }
    else if (response.statusCode == 201) {
      apiResponse.setHttpResponse(new HttpResponseMessage(
        response.statusCode,
        message: response.data['message'],
      ));
      apiResponse.setContent(response.data);
    }
    else {
      apiResponse.setHttpResponse(new HttpResponseMessage(
        response.statusCode,
        message: response.data.toString(),
      ));
    }*/
    return apiResponse;
  }
  static ApiResponse _buildOut2(BuildContext context, Response response) {
    ApiResponse apiResponse = new ApiResponse();
    if (response.statusCode == 200) {
      print("hello = ${response}");
      apiResponse.statusCode = response.statusCode!;
      apiResponse.status = response.data['status'];
      apiResponse.message = response.data['message'];
      apiResponse.body = response.data;
    }
    else if(response.statusCode == 422 || response.statusCode == 404){
      if (response.data is Map<String, dynamic>) {
        Map<String, dynamic> responseBody = response.data;
        apiResponse.statusCode = response.statusCode!;
        apiResponse.status = response.data['status'];
        apiResponse.message = responseBody['results'] == null ? response.data["message"] : responseBody['results'].containsKey('errors')
            ? getErrorString(responseBody['results']['errors'])
            : response.data["message"];

        // apiResponse.body = response.data['data'];
      }
      else {
        apiResponse.statusCode = response.statusCode!;
        apiResponse.message = response.data.toString();
      }
    }


    else{
      apiResponse.statusCode = response.statusCode!;
      apiResponse.message = "there is an error";
    }
    return apiResponse;
  }

  static ApiResponse _buildOutForHtmlResponse(BuildContext context, Response response) {
    ApiResponse apiResponse = new ApiResponse();
    if (response.statusCode == 200) {
      print("hello = ${response}");
      apiResponse.statusCode = response.statusCode!;
      apiResponse.body = response.data;
    }
    else if(response.statusCode == 422 || response.statusCode == 404){
      if (response.data is Map<String, dynamic>) {
        Map<String, dynamic> responseBody = response.data;
        apiResponse.statusCode = response.statusCode!;

      }
      else {
        apiResponse.statusCode = response.statusCode!;
      }


    }
    else{
      apiResponse.statusCode = response.statusCode!;
      apiResponse.message = "there is an error";
    }
    return apiResponse;
  }

//
//  static Future<Map<String, String>> _buildHeader() async {
//    return {
//      "Accept": "application/json",
//    };
//  }

  static ApiResponse _errorNoResponse(DioError error) {
    if (error.error is SocketException) {
      return new ApiResponse(statusCode: 502,message: "تأكد من إتصالك بالإنترنت");
    } else if (error is TimeoutException) {
      return new ApiResponse(statusCode: 504,message: "Request execution time reached the limit");
    } else {
      return new ApiResponse(statusCode: 500,message: error.toString());
    }
  }

}
