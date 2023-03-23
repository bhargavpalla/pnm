
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_notifier.dart';
import 'package:my_app2/controllers/HomeProvider.dart';
import 'package:my_app2/model/ListModel.dart';
import 'package:my_app2/repo/HomeRepo.dart';

class HomeController extends GetxController with StateMixin{
  HomeController(this.homeProvider);
  final HomeProvider homeProvider;

  void fetchList() {
    change(null, status: RxStatus.loading());

    homeProvider.getData().then((product) {
      change(product, status: RxStatus.success());
      print(product.list);
    }).catchError((error) {
      change(null, status: RxStatus.error(error.toString()));
    });
  }

}