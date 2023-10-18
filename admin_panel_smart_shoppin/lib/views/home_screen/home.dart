
// ignore_for_file: depend_on_referenced_packages

import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/widgets/dashboard_button.dart';
import 'package:emart_seller/views/widgets/text_style.dart';

import '../widgets/appbar_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarwidget(dashboard),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                dashboardButton(context, text: products, count: "60", icon: icproducts),
                dashboardButton(context, text: orders, count: "60", icon: icorders),
               
              ],
            ),
            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                dashboardButton(context, text: rating, count: "5.0", icon: icstar),
                dashboardButton(context, text: totalsale, count: "50000", icon: icchat ),
                
              ],
            ),
            10.heightBox,
            const Divider(),
            10.heightBox,
            boldText(text: popular, color: darkGrey, size: 16.0),
            20.heightBox,
            ListView(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              children: List.generate(3, (index) => ListTile(
                onTap: (){},
                leading: Image.asset(imgProduct, width: 100, height: 100, fit: BoxFit.cover, ),
                title: boldText(text: "Women T-Shirt", color: darkGrey),
                subtitle: normalText(text: "Pkr: 1000", color: darkGrey),
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}