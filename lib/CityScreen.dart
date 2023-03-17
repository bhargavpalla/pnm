import 'package:flutter/material.dart';
import 'package:my_app2/CityModel.dart';
import 'package:my_app2/ColorsFile.dart';

class CityScreen extends StatelessWidget {
  CityScreen({super.key});
  List<CityModel> mList = [CityModel("Bangalore", "3327"), CityModel("Hyd", "2232")];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("City Screen"),
      ),
      body:  Container( margin: EdgeInsets.all(16), child:Column(
        children:  [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter City Name',
              ),
            ),

          ),
          //  SizedBox(height: 5,),
          Expanded(
                  child: ListView.builder(itemCount: mList.length,itemBuilder: (context, index) {
                    return cityItems(context, mList[index] );} ))


        ],
      ),
    ));
  }

}

Widget cityItems(BuildContext context, CityModel item) {
  return
    Card(
      child: Row(
        children: [
          InkWell(
            child: Padding(padding: EdgeInsets.all(16),
                child:Container(child: Text("City  : ${item.cityName}"))),

            onTap:() {
              Navigator.pop(
                  context, item.cityName);

            },
          )
        ],
      ),
    );

}