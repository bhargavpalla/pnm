import 'package:my_app2/network/ApiService.dart';

import '../../utilities/typedef.dart';

class LoginRepo {
  final ApiService apiService;
  LoginRepo(this.apiService);
  
  Future<JSON> generateOtp( String mobile) async {
    JSON data = {
      "mobileNumber": mobile
    };
    return await apiService.post(
        endpoint: "http://172.29.217.39/propertyservicesapi/vendor/pnmVendor/generateLogin", body: data);
  }
}