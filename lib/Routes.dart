import 'package:get/get.dart';
import 'package:my_app2/CityScreen.dart';
import 'package:my_app2/main.dart';

class Routes {
  static final INITIAl = '/home';
  static final CITY = '/city';

  static final routes = [
    GetPage(name: '/home', page: () => MyHomePage()),
    GetPage(name: '/city', page: () => CityScreen()),
  ];
}