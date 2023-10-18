import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/widgets/text_style.dart';

// ignore: non_constant_identifier_names
Widget ChatBubbles(){

  return Directionality(textDirection: TextDirection.ltr, 
  child: Container(
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.only(bottom: 8),
      decoration: const BoxDecoration(
        color: Colors.lightGreen,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          normalText(text: "hello, shan ali is here...."),
          10.heightBox,
          normalText(text: "4:49 PM"),
        ],
      ),
    )
  );
}