import 'package:emart_seller/const/const.dart';
// ignore: unused_import
import 'package:get/get.dart';

class StoreServices{
  static getProfile(uid){
    return firestore.collection(vendorCollections).where('id', isEqualTo: uid).get();
  }
}