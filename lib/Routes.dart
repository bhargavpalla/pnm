import 'package:get/get.dart';
import 'package:my_app2/controllers/HomeBinding.dart';
import 'package:my_app2/views/CityScreen.dart';
import 'package:my_app2/views/Login.dart';
import 'package:my_app2/views/main.dart';

import 'controllers/Login/LoginBinding.dart';

class Routes {
  static final INITIAl = '/home';
  static final CITY = '/city';
  static final LOGIN = '/login';

  static final routes = [
    GetPage(name: '/home', page: () => MyHomePage(), binding: HomeBinding()),
    GetPage(name: '/city', page: () => CityScreen()),
    GetPage(name: '/login', page: () => Login(), binding: LoginBinding()),

  ];
}