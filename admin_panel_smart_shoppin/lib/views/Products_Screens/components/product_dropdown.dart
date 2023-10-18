import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/widgets/text_style.dart';


// ignore: non_constant_identifier_names
Widget ProductDropdown(){
  return DropdownButtonHideUnderline(
    child: DropdownButton<String>(
      hint: normalText(text: "  Choose Category", color: darkGrey,),
      value: null,
      isExpanded: true,
      items: const [], onChanged: (value){}),
  ).box.white.padding(const EdgeInsets.symmetric(horizontal: 4)).rounded.make();
}