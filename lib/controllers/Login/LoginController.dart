import 'package:get/get.dart';
import 'package:my_app2/controllers/Login/LoginProvider.dart';

import '../../model/OtpResponseModel.dart';

class LoginController extends GetxController with StateMixin {

  final LoginProvider loginProvider;
  var  model = <OtpResponseModel>[].obs;
  late Rx<OtpResponseModel?> geneStatus = null.obs;
  LoginController(this.loginProvider) ;
   //   geneStatus = model.obs;
   // }

  void generateOtp(String mobile) {
    loginProvider.generateOtpApi(mobile).then((product) {
      //loginProvider.generateOtpApi(mobile);
      model.add(product!);
      geneStatus.value = product;
      print(geneStatus.value?.generatedOTPStatus);
    });
  }
}