// import 'package:emart_seller/const/const.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:get/get.dart';

// class AuthController extends GetxController {
//   final FirebaseAuth auth = FirebaseAuth.instance;

//   var isloading = false.obs;

//   var emailController = TextEditingController();
//   var passwordController = TextEditingController();

//   //login method
//   Future<UserCredential?> loginMethod({context}) async {
//     UserCredential? userCredential;

//     try {
//       userCredential = await auth.signInWithEmailAndPassword(
//           email: emailController.text, password: passwordController.text);
//     } on FirebaseAuthException catch (e) {
//       VxToast.show(context, msg: e.toString());
//     }

//     return userCredential;
//   }

//   //signup method
//   // Future<UserCredential?> signupMethod({context}) async {
//   //   UserCredential? userCredential;

//   //   try {
//   //     userCredential = await auth.signInwithEmailAndPassword(
//   //         email: emailController.text, password: passwordController);
//   //   } on FirebaseAuthException catch (e) {
//   //     VxToast.show(context, msg: e.toString());
//   //   }

//   //   return userCredential;
//   // }

//   signOutMethod(context) async {
//     try {
//       await auth.signOut();
//     } catch (e) {
//       VxToast.show(context, msg: e.toString());
//     }
//   }
// }
import 'package:emart_seller/const/const.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final FirebaseAuth auth = FirebaseAuth.instance;

  var isloading = false.obs;

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  //login method
  Future<UserCredential?> loginMethod({context}) async {
    UserCredential? userCredential;

    try {
      userCredential = await auth.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
    }

    return userCredential;
  }

  // //signup method
  // Future<UserCredential?> signupMethod({context}) async {
  //   UserCredential? userCredential;

  //   try {
  //     userCredential = await auth.createUserWithEmailAndPassword(
  //         email: emailController.text, password: passwordController.text);
  //   } on FirebaseAuthException catch (e) {
  //     VxToast.show(context, msg: e.toString());
  //   }

  //   return userCredential;
  // }

  signOutMethod(context) async {
    try {
      await auth.signOut();
    } catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }
}
