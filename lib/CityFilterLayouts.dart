import 'package:flutter/material.dart';
import 'package:my_app2/CityScreen.dart';
import 'package:my_app2/ColorsFile.dart';
import 'package:my_app2/main.dart';


class CityFiltersWidget extends StatelessWidget {
  CityFiltersWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.fromLTRB(16.0,16,16,0),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child:GestureDetector(
            onTap: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => CityScreen()));
            },
          child: Container(
            alignment: AlignmentDirectional.topStart,
            padding: const EdgeInsets.fromLTRB(18, 8, 0,8),
            decoration: BoxDecoration(
              border: Border.all(color:AppColors.d7d7d7, width: 1.0, strokeAlign: BorderSide.strokeAlignInside),
              borderRadius: BorderRadius.circular(18.0),
              //image: DecorationImage(image: Image.asset(name)
            ),

            child: Text("Select City", textAlign: TextAlign.left, style: TextStyle(fontSize: 14, color: Colors.black),),

          ),
        ),
        ),
        SizedBox(width: 16,),
        Expanded(
          child: Container(
            alignment: AlignmentDirectional.centerStart,
            padding: const EdgeInsets.fromLTRB(18, 8, 0,8),
            decoration: BoxDecoration(
              border: Border.all(color:AppColors.d7d7d7, width: 1.0, strokeAlign: BorderSide.strokeAlignInside),
              borderRadius: BorderRadius.circular(18.0),
              //image: DecorationImage(image: Image.asset(name)
            ),

            child: Text("Filters", textAlign: TextAlign.left, style: TextStyle(fontSize: 14, color: Colors.black),),

          ),
        ),


      ],
    ),
    );
  }
}