// ignore_for_file: non_constant_identifier_names

import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/widgets/text_style.dart';

Widget OrderPlaceDetails({title1, title2, d1, d2}){

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            boldText(text: "$title1", color: fontGrey),
            boldText(text: "$d1", color: red)
          ],
        ),
        SizedBox(
          width: 130,
          child: Column(
            children: [
            boldText(text: "$title2", color: fontGrey),
            boldText(text: "$d2", color: red)
      ]
      ),
        ),
      ],
    ), 
    
    );  

}