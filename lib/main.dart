import 'package:flutter/material.dart';
import 'package:my_app2/CardLayout.dart';
import 'package:my_app2/CityFilterLayouts.dart';

import 'CityModel.dart';
import 'TagsLayout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
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
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 2, itemBuilder: (context, index) {
      return OrderCard();
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


