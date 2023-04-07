import 'package:get/get.dart';
import 'package:my_app2/controllers/Login/LoginController.dart';
import 'package:my_app2/controllers/Login/LoginProvider.dart';
import 'package:my_app2/controllers/Login/LoginRepo.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginProvider>(() => LoginProvider(Get.find()));
    Get.lazyPut<LoginRepo>(() => LoginRepo(Get.find()));
    Get.lazyPut<LoginController>(() => LoginController(Get.find()));


  }

}