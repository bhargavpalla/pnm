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
    // Get.lazyPut<ApiService>(() => ApiService(Get.find()));
    // Get.lazyPut<BaseProvider>(() => BaseProvider(Get.find()));
    Get.put(BaseProvider(), permanent: true);
    Get.put(ApiService(Get.find()), permanent: true);


  }

}