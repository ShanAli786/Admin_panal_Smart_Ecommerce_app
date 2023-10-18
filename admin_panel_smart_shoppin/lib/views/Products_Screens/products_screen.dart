// ignore_for_file: depend_on_referenced_packages, sort_child_properties_last

import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/Products_Screens/add_product.dart';
import 'package:emart_seller/views/Products_Screens/product_details.dart';
import 'package:emart_seller/views/widgets/appbar_widget.dart';
import 'package:get/get.dart';

import '../widgets/text_style.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: purpleColor,
        onPressed: (){
          Get.to(()=>const AddProduct());
        },
        child: const Icon(Icons.add),
        ),
      appBar: appbarwidget(products),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: List.generate(20, (index) => ListTile(
            
                  onTap: (){
                    Get.to(()=>const ProductDetails());
                  },
                  leading: Image.asset(imgProduct, width: 100, height: 100, fit: BoxFit.cover, ),
                  title: boldText(text: "Women T-Shirt", color: darkGrey),
              subtitle: Row(
                children: [
                  normalText(text: "Pkr: 1000", color: darkGrey),
                  10.widthBox,
                  normalText(text: "Featured", color: darkGrey),
                ],
              ),

                  trailing: VxPopupMenu(
                    //arrowSize: 0.0,
                    child: const Icon(Icons.more_vert_rounded), menuBuilder: ()=>
                  Column(
                    children: List.generate(PopupMenuTitles.length, (index) => 
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                            Icon(PopupMenuIcon[index], color: darkGrey,),
                            5.widthBox,
                            normalText(text: PopupMenuTitles[index],color: darkGrey)
                    
                        ],
                      ).onTap(() { })
                    )
                    ),
                  ).box.purple100.shadow.rounded.width(200).make(), 
                  clickType: VxClickType.singleClick),
                ),
          ),
        ),
      ),
    );
  }
}