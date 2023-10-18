// ignore_for_file: implementation_imports, unnecessary_import, unused_import

// ignore: avoid_web_libraries_in_flutter
//import 'dart:html';

import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/controllers/auth_controller.dart';
import 'package:emart_seller/views/home_screen/home_screen.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../widgets/our_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AuthController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: purpleColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              40.heightBox,
              normalText(text: welcome, size: 22.0),
              40.heightBox,
              Row(
                children: [
                  30.heightBox,
                  Image.asset(
                    iclogo,
                    width: 80,
                  )
                      .box
                      .border(color: white)
                      .rounded
                      .padding(const EdgeInsets.all(12))
                      .make(),
                  30.widthBox,
                  boldText(text: appname, size: 16.0),
                ],
              ),
              40.heightBox,
              Obx(
                () => Column(
                  children: [
                    TextFormField(
                      controller: controller.emailController,
                      decoration: const InputDecoration(
                        fillColor: textfieldGrey,
                        filled: true,
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: purpleColor,
                        ),
                        hintText: emailHint,
                        border: InputBorder.none,
                      ),
                    ),
                    20.heightBox,
                    TextFormField(
                      controller: controller.passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        fillColor: textfieldGrey,
                        filled: true,
                        prefixIcon: Icon(
                          Icons.key,
                          color: purpleColor,
                        ),
                        hintText: paswordhint,
                        border: InputBorder.none,
                      ),
                    ),
                    10.heightBox,
                    Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {},
                            child: normalText(
                                text: forgotPassword, color: purpleColor))),
                    20.heightBox,
                    SizedBox(
                      width: context.screenWidth - 100,
                      child: controller.isloading.value? const CircularProgressIndicator(): ourButton(
                        text: login,
                        onPress: () async {
                          //Get.to(() => const HomeScreen());
                          controller.isloading(true);
                          await controller
                              .loginMethod(context: context)
                              .then((value) {
                            if (value != null) {
                              VxToast.show(context, msg: "LoggedIn");
                              controller.isloading(false);
                              Get.offAll(() => const HomeScreen());
                            } else {
                              controller.isloading(false);
                            }
                          });
                        },
                      ).box.shadowSm.make(),
                    ),
                  ],
                )
                    .box
                    .white
                    .rounded
                    .outerShadow
                    .padding(const EdgeInsets.all(8))
                    .make(),
              ),
              10.heightBox,
              Center(child: normalText(text: anyProblem)),
              const Spacer(),
              Center(child: boldText(text: credit)),
              20.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
