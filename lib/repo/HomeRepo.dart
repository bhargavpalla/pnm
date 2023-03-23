import '../network/ApiService.dart';
import '../utilities/typedef.dart';

class HomeRepo {
  final ApiService _apiService;

  HomeRepo(this._apiService);

  Future<JSON> getList() async {
    return await _apiService.get(endpoint: "https://reqres.in/api/users/2");

}

}
