// ignore_for_file: depend_on_referenced_packages

import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/orders_screen/order_details.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart' as intl;

import '../widgets/appbar_widget.dart';
import '../widgets/text_style.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
          appBar: appbarwidget(orders),
          
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: List.generate(20, (index) => ListTile(
              
                    onTap: (){
                      Get.to(()=>const OrderDetails());
                    },
                    tileColor: textfieldGrey,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    title: boldText(text: "154515455", color: purpleColor),
                    subtitle: Column(
                      children: [
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children:  [
                            const Icon(Icons.calendar_month),
                            20.heightBox,
                           normalText(text:intl.DateFormat().add_yMd().format(DateTime.now()),color:darkGrey),
                          ],
                        ),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children:  [
                            const Icon(Icons.payment),
                            20.heightBox,
                            boldText(text: unpaid, color: purpleColor),
                           //normalText(text:intl.DateFormat().add_yMd().format(DateTime.now()),color:darkGrey),
                          ],
                        ),
                      ],
                      
                    ),
                    trailing: boldText(text: "Pkr: 5000", color: purpleColor),
                  ).box.margin(const EdgeInsets.only(bottom: 4)).make(),
            ),
          ),
        ),
      ),
   );
  }
}