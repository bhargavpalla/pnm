
import 'package:flutter/material.dart';
import 'package:my_app2/CityModel.dart';
import 'package:my_app2/ColorsFile.dart';
import 'package:my_app2/TagsLayout.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key});
  final orderId = "4213";
  final shiftDate = "14-10-2023";

  @override
  Widget build(BuildContext context) {
    return Container(

        child:Card(
          margin: const EdgeInsets.all(16),
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
                  padding: const EdgeInsets.fromLTRB(16,0,0,16),
                  child: Column(
                      children: _orderDetails())
              ),
              _separator(),
              quoteWidget("quote"),
              quoteWidget("timer"),
              acceptDeclineButtons()

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
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        Expanded(
          flex: 3,
          //widthFactor: 0.5,
          child: Text(item.label, style: const TextStyle(fontSize: 15, color: Colors.black),),
        ),
        const Text(":"),
        Expanded(
            flex: 6,
            child: Padding(padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child:Text(item.value,  style: const TextStyle(fontSize: 15, color: Colors.black),))
        )

      ],
    ),
  );

}

Widget _separator() {
  return LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
      final boxWidth = constraints.constrainWidth();
      const dashWidth = 8.0;
      const dashHeight = 1.0;
      final dashCount = (boxWidth / (2 * dashWidth)).floor();
      return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.horizontal,
        children: List.generate(dashCount, (_) {
          return SizedBox(
            width: dashWidth,
            height: dashHeight,
            child: DecoratedBox(
              decoration: BoxDecoration(color: AppColors.d7d7d7),
            ),
          );
        }),
      );
    },
  );
}

Widget quoteWidget(String type) {
  String assetName;
  String text;
  if(type == "quote") {
    assetName = 'assets/oval.svg';
    text = "Movement Quote : Rs. 8000";
  }
  else {
    assetName = 'assets/clock.svg';
    text = "Accept Within: 30mins";
  }
  final Widget svg = SvgPicture.asset(
      assetName,
      semanticsLabel: 'Acme Logo'
  );
  return Container(
    margin: const EdgeInsets.fromLTRB(20, 15.5, 16, 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        svg,
        Padding(padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
          child: Text(text),
        )
      ],
    ),
  );

}

Widget acceptDeclineButtons() {
  return Container(

    margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(child:
          ElevatedButton(
            onPressed: () { print("hello");
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(32, 8, 32, 8)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(color: Colors.blue, width: 1, strokeAlign: BorderSide.strokeAlignInside)
                    )
                )
            ),
            child: const Text(
              'Cancel',textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 14), textScaleFactor: 1,
            ),
          )),
          const SizedBox(width: 16,),
          Expanded(child:
          ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(32, 8, 32, 8)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  )
              ),
              child: const Text("Confirm", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 14),)

          )
          )
        ],
      ));

}