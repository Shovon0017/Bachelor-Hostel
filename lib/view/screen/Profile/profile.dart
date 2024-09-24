import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Common_widget/CommonIcon.dart';
import '../../../Common_widget/common_button.dart';
import '../../../controller/getxcontroller/logout.dart';
import '../FAQ/FAQ.dart';
import '../Order  report/Order_report.dart';
import '../confirmOrder/confirmOrder.dart';
import '../notification/notification.dart';
import '../requested_order/requested_order.dart';
import '../setting/setting.dart';
import '../support/support.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    LogOutService controller = Get.put(LogOutService());
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        title: SizedBox(
            height: 32, width: 114, child: Image.asset("images/Bachelor Hostel logo.png")),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CommonIconButton(onTap: () {
              Get.to(() => const NotificationShow());
            }),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "Profile",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(
                height: 120,
                width: double.infinity,
                child: Card(
                  elevation: 5,
                  color: const Color(0xff9a0000),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                          height: 100,
                          width: 100,
                          child:
                              Card(child: Image.asset("images/Shovonpic.jpg"))),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Name:Md Shimanto Mostofa",
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: "Email:",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            TextSpan(
                                text: "Shovon@gmail.com",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 15))
                          ])),
                          RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: "Phone:",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            TextSpan(
                                text: "01643770017",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 15))
                          ])),
                          RichText(text: const TextSpan(
                              children: [
                                TextSpan(text: "Address:",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
                                TextSpan(text: "Sector-12,Uttara,Dhaka",style: TextStyle(color: Colors.white,fontSize: 15))
                              ]
                          ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CommonButton(buttonName: "Requested Order", onTap: () {
                Get.to(()=>const Order());
              }),
              CommonButton(buttonName: "Confirm Order", onTap: () {
                Get.to(()=>const ConfirmOrder());
              }),
              CommonButton(buttonName: "Order Report", onTap: () {
                Get.to(()=>const OrderReport());
              }),
              CommonButton(buttonName: "Setting", onTap: () {
                Get.to(()=>const Setting());
              }),
              CommonButton(buttonName: "Support", onTap: () {
                Get.to(()=>const Support());
              }),
              CommonButton(buttonName: "FAQ", onTap: () {
                Get.to(()=>const FAQ());
              }),
              CommonButton(
                  buttonName: "LogOut",
                  onTap: () {
                    controller.logOutFun();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
