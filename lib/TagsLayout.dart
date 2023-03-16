import 'package:flutter/material.dart';
import 'package:my_app2/ColorsFile.dart';

class TagsWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
        child: Row(
          children: _allTags(),
        )
    );
  }
}

List<Widget> _allTags() {
  List<String> myList =["2 BHK", "Intra", "10KM"];
  List<Widget> Tags = [];
  for(var item in myList) {
    Tags.add(_singleTag(item));
  }
  return Tags;
}

Widget _singleTag(item) {

  return Row(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(7, 4, 7 ,4),
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: AppColors.color_b2dfd8),
              borderRadius: BorderRadius.circular(4)
          ),
          child: Text(item, style: TextStyle(color: AppColors.color_009681, fontSize: 13), textAlign: TextAlign.center,),
        ),
        SizedBox(width: 16,)
      ]
  );

}