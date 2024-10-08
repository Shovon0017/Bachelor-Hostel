

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Common_widget/CommonIcon.dart';
import '../../../Common_widget/common_button.dart';
import '../auth/widget/auth  widget/common_text_field.dart';
import '../OrderTrack/OrderTrack.dart';
import '../notification/notification.dart';
class OrderReport extends StatelessWidget {
  const OrderReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color(0xffFFFFFF),
      appBar:AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        title: SizedBox(
            height: 32,
            width: 114,
            child: Image.asset("images/appbar.png")),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CommonIconButton(onTap: (){
              Get.to(()=>const NotificationShow());
            }),
          )
        ],
      ) ,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:10),
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text("Order Report",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 20,
              ),
              CommonTextField(Controller: TextEditingController(), hinText: "Type Your Order Number", icon: null, color: Colors.grey),
              const SizedBox(
                height: 10,
              ),
              CommonButton(buttonName: "Track On", onTap: (){
                Get.to(()=>const OrderTrack());
              })
            ],
          ),
        ),
      ),
    );
  }
}
