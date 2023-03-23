import 'dart:async';
import 'package:get/get.dart';
import 'package:get/get_connect.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:get/get_core/src/get_main.dart';


FutureOr<dynamic> responseInterceptor(Request request, Response response) async {
  return handelResponse(response);
}

dynamic handelResponse(response) {
  print('RESPONSE START /////////////////');
  print('               Status Code: ${response.statusCode}');
  print('               Body: ${response.body}');
  print('RESPONSE END /////////////////');

  switch (response.statusCode) {
    case 200:
      return response;
    default:
      Get.snackbar('error',
          'Error accrued while fetching data. : ${response.statusCode}');
      throw UnknownException(
          'Error accrued while fetching data. : ${response.statusCode}');
  }
}

class AppException implements Exception {
  final code;
  final message;
  final details;

  AppException({this.code, this.message, this.details});

  String toString() {
    return "[$code]: $message \n $details";
  }
}

class UnknownException extends AppException {
  UnknownException(String message) : super(code: 010, message: message);
}
