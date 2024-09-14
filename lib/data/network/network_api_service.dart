

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:getx_mvvm/data/network/base_api_service.dart';
import 'package:http/http.dart' as http;

import '../app_exceptions.dart';

class NetworkApiService extends BaseApiService {


  @override
  Future<dynamic> getApi(String url) async {
    dynamic responseJson;
    try {
      final reponse = await http.get(Uri.parse(url)).timeout(
          const Duration(seconds: 10));
      responseJson = returnResponse(reponse);
    } on SocketException catch (e) {
      throw InternetException('');
    } on TimeoutException catch (e) {
      throw RequestTimeOut('Request Time Out');
    } on Exception catch (e) {
      throw AppExceptions(e.toString());
    }

    return responseJson;
  }


  @override
  Future<dynamic> postApi(data, String url) async {

    dynamic responseJson;
    try{

      final reponse = await http.post(Uri.parse(url),
      body: jsonEncode(data),
      ).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(reponse);
    } on SocketException catch(e){
      throw InternetException('');
    } on TimeoutException catch(e){
      throw RequestTimeOut('Request Time Out');
    } on Exception catch(e){
      throw AppExceptions(e.toString());
    }

    return responseJson;

  }


  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 201:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw InvalidUrlException();
      case 401:
      case 500:
      default:
        throw FatchDataException(
            'Error occured while Communication with Server with StatusCode : ${response
                .statusCode}');
    }
  }

}


