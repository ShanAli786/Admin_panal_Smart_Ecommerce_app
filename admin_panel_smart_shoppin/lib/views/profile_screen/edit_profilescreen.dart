// ignore_for_file: unnecessary_import

import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/widgets/custom_textfield.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/text_style.dart';

class EditProfileScreen extends StatefulWidget {
  final String? username;
  const EditProfileScreen({super.key, this.username});

  @override
  // ignore: library_private_types_in_public_api
  _EditProfileScreenState createState() => _EditProfileScreenState();

}

class _EditProfileScreenState extends State<EditProfileScreen> {
     // var controller = Get.find<ProfileController>();
@override
  void initState() {
  // controller.nameController.text = widget.username!;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        backgroundColor: purpleColor,
        title: boldText(text: eidtprofile, size: 16.0),
        actions: [
          TextButton(
            onPressed: () {},
            child: boldText(text: save, size: 18.0),
          ),
        ],
      ),  

      //=====================Body================================================

      body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
        Image.asset(profile, width: 150).box.roundedFull.clip(Clip.antiAlias).make(),
        10.heightBox,
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: white,
          ),
          onPressed: () {},
          child: normalText(
            text: changeImage,
            color: purpleColor,
          ),
        ),
        10.heightBox,
        const Divider(
          color: white,
        ),
        customTextField(label: name, hint: "eg. Techard", 
        //controller: controller.nameController
        ),
        15.heightBox,
        customTextField(label: password, hint: paswordhint, 
        // controller: controller.oldPassController
        ),
        15.heightBox,
        customTextField(label: confirmpassword, hint: paswordhint, 
        //controller: controller.newPassController
        ),

        15.heightBox,
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            // ignore: deprecated_member_use
            primary: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          ),
          onPressed: () {},
          child: const Text(
            'change password',
            style: TextStyle(fontSize: 20),
          ),
        ),
          ],
        ),
      ),
      ),

    );
  }
}