// ignore_for_file: depend_on_referenced_packages

import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:intl/intl.dart' as intl;

AppBar appbarwidget(title){

return AppBar(

  
        backgroundColor: white,
        automaticallyImplyLeading: false,
        title: boldText(text: title, color: darkGrey, size: 18.0),
        actions: [
          Center(child: normalText(text:intl.DateFormat('EEE, MMM d, ' 'yy').format(DateTime.now()), color: purpleColor)),
          10.widthBox,
        ],
      );
  
}