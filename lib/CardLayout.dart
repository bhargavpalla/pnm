
import 'package:flutter/material.dart';
import 'package:my_app2/ColorsFile.dart';
import 'package:my_app2/TagsLayout.dart';


class OrderCard extends StatelessWidget {
  const OrderCard({super.key});
  final orderId = "4213";
  final shiftDate = "14-10-2023";

  @override
  Widget build(BuildContext context) {
    return Container(

        child:Card(
          margin: EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child:
          Column(
            
            children: [
              IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 4, 0, 4),
                        child: Row(
                          children: [
                            Text("Order Id - ", textAlign: TextAlign.left, style: TextStyle(fontSize: 14, color: AppColors.color_606060)),
                           Text(orderId, textAlign: TextAlign.left, style: TextStyle(fontSize: 14, color: AppColors.color_606060)),
                          ],

                        )
                      )),
                  VerticalDivider(
                    thickness: 1,
                    color: AppColors.d7d7d7,
                  ),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 4, 0, 4),
                        child: Row(
                          children: [
                          Text("Shift Date", textAlign: TextAlign.left, style: TextStyle(fontSize: 14, color: AppColors.color_606060)),
                            Text(shiftDate, textAlign: TextAlign.left, style: TextStyle(fontSize: 14, color: AppColors.color_606060)),

                          ] ))),

                ],
              )),
              Container(
                height: 1,
                decoration: BoxDecoration(
                    color: AppColors.d7d7d7
                ),
              ),
              TagsWidget()
            ],
          ),

        )
    );
  }

}