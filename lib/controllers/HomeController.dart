
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_notifier.dart';
import 'package:my_app2/views/CardLayout.dart';
import 'package:my_app2/controllers/HomeProvider.dart';
import 'package:my_app2/model/ListModel.dart';
import 'package:my_app2/repo/HomeRepo.dart';

import '../views/CityFilterLayouts.dart';

class HomeController extends GetxController with StateMixin{
  HomeController(this.homeProvider);
  final HomeProvider homeProvider;
  var count = 1.obs ;
  var show = "home".obs;
  // List<Widget> pages = [
  //   CityFiltersWidget(),
  //   SizedBox(height: 16,),
  //   Expanded(child:OrderList())
  // ];

  void fetchList() {
    change(null, status: RxStatus.loading());
    homeProvider.getData().then((product) {
      change(product, status: RxStatus.success());
      count.value = product.list;
    }).catchError((error) {
      change(null, status: RxStatus.error(error.toString()));
    });
  }
  void updateItem() {
    Get.snackbar("pressed", "");
       show("assigned");
  }

}