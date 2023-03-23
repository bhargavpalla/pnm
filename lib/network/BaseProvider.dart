import 'package:get/get.dart';
import 'package:get/get_connect.dart';
import 'package:my_app2/network/RequestInterceptor.dart';
import 'package:my_app2/network/ResponseInterceptor.dart';

class BaseProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = "";
     httpClient.addRequestModifier(requestInterceptor);
     httpClient.addResponseModifier(responseInterceptor);
  }

}