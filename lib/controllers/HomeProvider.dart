import 'package:my_app2/controllers/HomeController.dart';

import '../model/ListModel.dart';
import '../repo/HomeRepo.dart';

class HomeProvider {
  HomeProvider(this.repo);
  final HomeRepo repo;

  Future<ListModel> getData() async{
    var list = await repo.getList();
    return ListModel.fromJson(list);

}
}