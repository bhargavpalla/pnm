import 'package:get/get.dart';
import 'package:my_app2/controllers/HomeBinding.dart';
import 'package:my_app2/views/CityScreen.dart';
import 'package:my_app2/views/main.dart';

class Routes {
  static final INITIAl = '/home';
  static final CITY = '/city';

  static final routes = [
    GetPage(name: '/home', page: () => MyHomePage(), binding: HomeBinding()),
    GetPage(name: '/city', page: () => CityScreen()),
  ];
}