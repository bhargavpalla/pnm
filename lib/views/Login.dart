import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../controllers/Login/LoginController.dart';

class Login extends GetView<LoginController> {

  @override
  Widget build(BuildContext context){
    return LoginWidget();
  }


  Widget LoginWidget() {
    final myController = TextEditingController();
    //var show = controller.model?.generatedOTPStatus;
    return  Scaffold(
      appBar: AppBar(title:Text("Magicbricks")),
      body: Column(
          children: [
            Container(
              margin:  const EdgeInsets.fromLTRB(30, 120, 30, 0),
              child:   TextField(
                controller: myController,
                  decoration: const InputDecoration(
                    labelText: "Enter Login Id (Mobile)",
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(10),
                  ]
              ),

            ),
            const SizedBox(height: 20,),
            Obx(() { if(controller.geneStatus.value?.generatedOTPStatus == true) {
              return Container(
              margin:  const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child:   TextField(
                  controller: myController,
                  decoration: const InputDecoration(
                    labelText: "Enter OTP",
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(10),
                  ]
              ),

            );
            }
            else {
              return Container(child: SizedBox(height:1 ,),);
            }
            }),
            const SizedBox(height: 20,),
            Container(
                margin: EdgeInsets.symmetric(vertical:0,horizontal:30),
                child:
                ElevatedButton(onPressed: () {controller.generateOtp(myController.text);},
                  child: Center(child: Text("Generate OTP")),

                ) )
          ]
      ),
    );
  }
}