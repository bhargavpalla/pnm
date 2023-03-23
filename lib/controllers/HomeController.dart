
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_notifier.dart';
import 'package:my_app2/controllers/HomeProvider.dart';
import 'package:my_app2/model/ListModel.dart';
import 'package:my_app2/repo/HomeRepo.dart';

class HomeController {
  HomeController(this.homeProvider);
  final HomeProvider homeProvider;
  var id = <ListModel>[].obs;

  void fetchList() {

    homeProvider.getData().then((product) {
      id(product as List<ListModel>?);
      print('$id fgf');
    });
  }

}