import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/widgets/text_style.dart';

Widget ourButton({text, color = purpleColor, onPress}){

  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
     backgroundColor: purpleColor,
      padding: const EdgeInsets.all(20),
    ),
    
    
    onPressed: onPress, child: boldText(text: text, size: 16.0));

}