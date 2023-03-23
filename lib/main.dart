import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_app2/CardLayout.dart';
import 'package:my_app2/CityFilterLayouts.dart';
import 'package:get/get.dart';

import 'CityModel.dart';
import 'Routes.dart';
import 'TagsLayout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      getPages: Routes.routes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.INITIAl,

    );
  }
}


class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Order Pool"),

        ),
        drawer: HarmburgerMenu(context),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Image(image: AssetImage('assets/home.png')),label: "Home"),
          BottomNavigationBarItem(icon: Image(image: AssetImage('assets/my_orders.png')), label : "My Orders"),

        ]),

        body: Column(
          children: [
            CityFiltersWidget(),
            SizedBox(height: 16,),
            Expanded(child: OrderList())
          ],
        )
    );
  }
}

class OrderList extends StatefulWidget {
  const OrderList({super.key});

  @override
  _OrderList createState() => _OrderList();

}

class _OrderList extends State<OrderList>{
  List<OrderInfo> mList = [OrderInfo("Shift Slot", "12pm - 3pm"), OrderInfo("From ", "HKBK college road, Manyata ,Nagavara, Blr "), OrderInfo("Service Lift", "Y"), OrderInfo("To", "Marathalli, Blr")];
  var click = false;
  var show = "home";
  void updateItem(bool clicks) {
    setState(() {
      click = true;
      show = "assigned";
      ScaffoldMessenger.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text("pressed")));
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 2, itemBuilder: (context, index){
      return  OrderCard(updateItem: (bool click) { updateItem(click); }, show: show,);
    });
  }

}

Widget HarmburgerMenu(BuildContext context) {
  return Drawer(
      child: ListView(
          children: [
            const UserAccountsDrawerHeader(
                accountName: Text("Hello Bhargav", style: TextStyle(fontWeight: FontWeight.bold),)
              , accountEmail: Text("bhargav@flutter.com"),
              currentAccountPicture: Image(image: AssetImage('assets/launcher.png')),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
              ),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(
                Icons.book_online_sharp,
              ),
              title: const Text('My Orders'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.logout_sharp,
              ),
              title: const Text('Log Out'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ]
      ));
}


