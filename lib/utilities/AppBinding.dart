import 'package:get/get.dart';

import '../network/ApiService.dart';
import '../network/BaseProvider.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BaseProvider(), permanent: true);
    Get.put(ApiService(Get.find()), permanent: true);  }

}