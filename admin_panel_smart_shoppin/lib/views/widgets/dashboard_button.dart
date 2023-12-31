import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/widgets/text_style.dart';

Widget dashboardButton(context, {text, count, icon}){

    var size = MediaQuery.of(context).size;
  return Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      boldText(text: text,size: 16.0),
                      boldText(text: count, size: 20.0),
                    ],
                  ),
                  ),
                Image.asset(icon, width: 40, color: white,),
              ],
            ).box.color(purpleColor).rounded.size(size.width*0.4, 116).padding(const EdgeInsets.all(12)).make();
}