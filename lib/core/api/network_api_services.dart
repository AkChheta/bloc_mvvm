import 'dart:convert';
import 'dart:io';

// import 'package:bloc_mvvm/core/api/base_api_services.dart';
import 'package:bloc_mvvm/core/errors/app_exceptions.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices
// extends BaseApiServices
{
  // @override
  Future getApi(String url) async {
    if (kDebugMode) {
      print(url);
    }
    dynamic responseJson;
    try {
      final response = await http.get(Uri.parse(url))
          // .timeout(const Duration(seconds: 60))
          ;
      responseJson = resturnResponse(response);
    } on SocketException {
      throw InternetExceptions('');
    } on RequestTimeDutExceptions {
      throw RequestTimeDutExceptions('');
    }

    return responseJson;
  }

  // @override
  Future postApi(var data, String url) async {
    if (kDebugMode) {
      print(url);
      print(data);
    }
    dynamic responseJson;
    try {
      final response = await http.post(Uri.parse(url),
              body:

                  // row form data =>
                  //  JsonEncoder(data)
                  data)
          // .timeout(const Duration(seconds: 60))
          ;
      responseJson = resturnResponse(response);
    } on SocketException {
      throw InternetExceptions('');
    } on RequestTimeDutExceptions {
      throw RequestTimeDutExceptions('');
    }

    return responseJson;
  }

  dynamic resturnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        // 404
        throw InvalidUrlExceptions;
      default:
        throw FetchDataExceptions(
            'error exceptions while commuticion with server ${response.statusCode}');
    }
  }
}
