import 'package:get/get.dart';
import 'package:my_app2/network/ApiService.dart';
import 'package:my_app2/network/BaseProvider.dart';

import '../repo/HomeRepo.dart';
import 'HomeController.dart';
import 'HomeProvider.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(Get.find()));
    Get.lazyPut<HomeProvider>(() => HomeProvider(Get.find()));
    Get.lazyPut<HomeRepo>(() => HomeRepo(Get.find()));
  }

}