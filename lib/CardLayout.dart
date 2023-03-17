
import 'package:flutter/material.dart';
import 'package:my_app2/CityModel.dart';
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
                              padding: const EdgeInsets.fromLTRB(16, 4 , 0, 4),
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
              TagsWidget(),
              Padding(
                  padding: EdgeInsets.fromLTRB(16,0,0,16),
                  child: Column(
                      children: _orderDetails())),

            ],
          ),

        )
    );
  }

}

List<Widget> _orderDetails() {
  List<OrderInfo> mList = [OrderInfo("Shift Slot", "12pm - 3pm"), OrderInfo("From ", "HKBK college road, Manyata ,Nagavara, Blr "), OrderInfo("Service Lift", "Y"), OrderInfo("To", "Marathalli, Blr"),
    OrderInfo("Service Lift", "Y"),];
  List<Widget> orderInfo= [];
  for(var item in mList) {
    orderInfo.add(orderItem(item));
  }
  return orderInfo;

}

Widget orderItem(OrderInfo item) {
  return Container(
    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        Expanded(
          flex: 3,
          //widthFactor: 0.5,
          child: Text(item.label, style: TextStyle(fontSize: 15, color: Colors.black),),
        ),
        Text(":"),
        Expanded(
          flex: 6,
            child: Padding(padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
            child:Text(item.value,  style: TextStyle(fontSize: 15, color: Colors.black),))
        )

      ],
    ),
  );

}