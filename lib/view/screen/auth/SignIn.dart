import 'dart:developer';

import 'package:bachelar_hostel/view/screen/auth/sign_up.dart';
import 'package:bachelar_hostel/view/screen/auth/widget/auth%20%20widget/confirm_password.dart';
import 'package:bachelar_hostel/view/screen/auth/widget/auth%20%20widget/email_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Common_widget/common_button.dart';
import '../../../Common_widget/common_loading_button.dart';
import '../../../Common_widget/common_text.dart';
import '../../../controller/api-controller/auth/sign_in_service.dart';
import '../../../controller/getxcontroller/sign_in.dart';
import '../forget_password/forget_password.dart';
class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignInService());
    SignInController signInController = Get.put(SignInController());
    return Scaffold(
      backgroundColor:const Color(0xffFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: signInController.formKey,
                child: Column(
                  children: [
                    const Text("Sign In",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,color: Colors.red),),
                    SizedBox(
                        height: 200,
                        width: 200,
                        child: Image.asset("images/signin.png")),
                    EmailTextField(  emailController: signInController.emailController,
                    ),
                    buildSizedBox(height: 10),
                    PasswordTextField(
                      passController: signInController.passwordController,
                    ),
                    buildSizedBox(height: 10),
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(onTap: (){
                          Get.to(()=>const ForgetPassword());
                        },
                            child: const CommonText(title: "Forget Password",fWeight: FontWeight.bold,fSize: 15,fColor:Colors.red,)),
                      ],
                    ),
                    buildSizedBox(height: 10),
                    Obx(()=> signInController.isLoading.isFalse ?  CommonButton(
                      buttonName: "Sign In",
                      onTap: () {
                        if (!signInController.formKey.currentState!.validate()) {
                          return ;
                        }
                        log("==========222222222222===============");
                        signInController.signInFun();
                      },
                    ) :  CommonLoadingButton()),
                    buildSizedBox(height: 10),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an Account",style: TextStyle(fontWeight: FontWeight.bold),),
                        buildSizedBox(width: 10),
                        GestureDetector(
                          child:const Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 17),),
                          onTap: (){
                            Get.to(() => const SignUp());
                          },
                        )
                      ],
                    )

                    //
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  SizedBox buildSizedBox({double? height, double? width}) =>
      SizedBox(height: height, width: width);
}
