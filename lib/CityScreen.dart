import 'package:flutter/material.dart';
import 'package:my_app2/CityModel.dart';
import 'package:my_app2/ColorsFile.dart';

class CityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("City Screen"),
      ),
      body:  Column(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter City Name',
              ),
            ),
          ),

        ],
      ),
    );
  }

}

class CityList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

  }

}

Widget cityListView() {
   List<CityModel> mList = [] ;
  var d1 = CityModel("Bangalore", "3327");
  var d2 = CityModel("Hyd", "2232");
  mList.add(d1);
  mList.add(d2);
  return ListView()
}