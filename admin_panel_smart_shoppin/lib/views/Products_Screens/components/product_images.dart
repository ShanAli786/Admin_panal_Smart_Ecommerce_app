import 'package:emart_seller/const/const.dart';

Widget productImages({required lable,onpress} ){
return "$lable".text.bold.color(fontGrey).size(16.0).makeCentered().box.color(white).size(100, 100).roundedSM.make();
}