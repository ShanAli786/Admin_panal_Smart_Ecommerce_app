// ignore_for_file: implementation_imports, unused_local_variable, unused_import

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/controllers/home_controllers.dart';
import 'package:emart_seller/views/Products_Screens/products_screen.dart';
import 'package:emart_seller/views/home_screen/home.dart';
import 'package:emart_seller/views/orders_screen/orders_screen.dart';
import 'package:emart_seller/views/profile_screen/profile_screen.dart';
import 'package:get/get.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var controller = Get.put(HomeController());

  var navScreens = [
    const Home(),
    const ProductsScreen(),
    const OrdersScreen(),
    const ProfileScreen(),
  ];


    var bottomNavbar = [
     const  BottomNavigationBarItem(
        icon: Icon(Icons.home), label: dashboard
      ),
         BottomNavigationBarItem(
       icon: Image.asset(icproducts, color: darkGrey,width: 24,),label: products
      ),
         BottomNavigationBarItem(
        icon: Image.asset(icorders , color: darkGrey,width: 24,),label: orders
      ),
         BottomNavigationBarItem(
        icon: Image.asset(icGeneralSetting, color: darkGrey,width: 24,),label: settings
      ),
    ];

    return  Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   title: boldText(text: dashboard, color: white, size: 18.0),
      // ),
      
    bottomNavigationBar: Obx(
     () => BottomNavigationBar(
        onTap: (index){
          controller.navIndex.value = index;
        },
        currentIndex: controller.navIndex.value,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: purpleColor,
        unselectedItemColor: darkGrey,
        
        items: bottomNavbar),
    ),
      body: Obx(
        () =>  Column(
          children: [
           Expanded(
            child: navScreens.elementAt(controller.navIndex.value)),
          ],
        ),
      ),
      
    );
  }
}