// import 'dart:io';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:emart_seller/const/const.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:image_picker/image_picker.dart';
// // ignore: depend_on_referenced_packages
// import 'package:path/path.dart';

// class ProfileController extends GetxController{

//   var profileImagPath = ''.obs;
//   var profileImageLink = ''.obs;
//   var isloading = false.obs;


//   var nameController = TextEditingController();
//   var oldpassController = TextEditingController();
//   var newpassController = TextEditingController();

//   changeImage(context) async{
//     try{
//       final img = await ImagePicker().pickImage(source: ImageSource.gallery, imageQuality: 70);
//       if(img==null) return;
//       profileImagPath.value = img.path;
//     } on PlatformException catch(e){
//       VxToast.show(context, msg: e.toString());
//     }
//     }

// uploadProfileImage() async{
//   var filename = basename(profileImagPath.value);
//   var destination = 'images/${curruntUser!.uid}/filename';
//   Reference ref = FirebaseStorage.instance.ref().child(destination);
//   await ref.putFile(File(profileImagPath.value));
//   profileImageLink = (await ref.getDownloadURL()) as RxString;
// }

// updateProfile({name,password,imgUrl}) async {
//   var store = firestore.collection(vendorCollections).doc(curruntUser!.uid);
//   await store.set({'name':name, 'password':password, 'imageUrl': imgUrl}, SetOptions(merge: true));
//   isloading(false);
// }
// changeAuthPassword ({email,password,newpassword}) async {
//   final cred = EmailAuthProvider.credential(email: email, password: password);
//   await curruntUser!.reauthenticateWithCredential(cred).then(valu){
//     curruntUser!.updatepassword(newpassword);
//   }.catchError((error){});
// }
// }

// import 'dart:io';

// ignore_for_file: prefer_typing_uninitialized_variables

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:emart_seller/const/const.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:path/path.dart';
//import 'dart:io';

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emart_seller/const/const.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';
class ProfileController extends GetxController {
  //late QueryDocumentSnapshot snapshotData;
  var profileImagePath = ''.obs;
  var profileImageLink = ''.obs;
  var isLoading = false.obs;

  var nameController = TextEditingController();
  var oldPassController = TextEditingController();
  var newPassController = TextEditingController();
  
  var currentUser;

  changeImage(context) async {
    try {
      final img = await ImagePicker().pickImage(
        source: ImageSource.gallery,
        imageQuality: 70,
      );
      if (img == null) return;
      profileImagePath.value = img.path;
    } on PlatformException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }

  uploadProfileImage() async {
    var filename = basename(profileImagePath.value);
    var currentUser;
    var destination = 'images/${currentUser!.uid}/$filename';
    Reference ref = FirebaseStorage.instance.ref().child(destination);
    await ref.putFile(File(profileImagePath.value));
    profileImageLink.value = await ref.getDownloadURL();
  }

  updateProfile({name, password, imgUrl}) async {
    var store =
        FirebaseFirestore.instance.collection(vendorCollections).doc(currentUser!.uid);
    await store.set(
      {
        'name': name,
        'password': password,
        'imageUrl': imgUrl,
      },
      SetOptions(merge: true),
    );
    isLoading(false);
  }

  changeAuthPassword({email, password, newPassword}) async {
    final cred = EmailAuthProvider.credential(email: email, password: password);
    await currentUser!.reauthenticateWithCredential(cred)
        .then((value) => currentUser!.updatePassword(newPassword))
        .catchError((error) {});
  }
}
