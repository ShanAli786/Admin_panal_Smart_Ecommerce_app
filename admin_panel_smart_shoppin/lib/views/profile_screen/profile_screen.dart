// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:emart_seller/const/const.dart';
// import 'package:emart_seller/controllers/auth_controller.dart';
// import 'package:emart_seller/services/store_services.dart';
// import 'package:emart_seller/views/Stylish_LoadingIndicator.dart';
// import 'package:emart_seller/views/auth_screen/login_screen.dart';
// import 'package:emart_seller/views/message_screen/message_screen.dart';
// import 'package:emart_seller/views/profile_screen/edit_profilescreen.dart';
// import 'package:emart_seller/views/settings_screens/shop_setting_screen.dart';
// import 'package:emart_seller/views/widgets/text_style.dart';
// import 'package:get/get.dart';

// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: purpleColor,
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         backgroundColor: purpleColor,
//         title: boldText(text: settings, size: 16.0),
//         actions: [
//           IconButton(onPressed: (){
//             Get.to(()=> const EditProfileScreen());
//           }, icon: const Icon(Icons.edit)),
//           TextButton(onPressed: ()async{
//             await Get.find<AuthController>().signOutMethod(context);
//             Get.offAll(()=> const LoginScreen());
//           }, child: const Icon(Icons.logout_sharp,color: white,)),
//         ],
//       ),

//       body: FutureBuilder(
//         future: StoreServices.getProfile(curruntUser!.uid),
//         builder: (BuildContext context, AsyncSnapshot<QuerySnapshot>snapshot){
//             if(!snapshot.hasData){
//               return const StylishLoadingIndicator();
//             }else{

//               var data = snapshot.data!.docs[0]; 

//                 return  Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             ListTile(
//               leading: Image.asset(imgProduct).box.roundedFull.clip(Clip.antiAlias).make(),
//               title: boldText(text: "${data['vendor_name']}"),
//               subtitle: normalText(text: "techard@gmail.com"),
//             ),
//             const Divider(),
//             10.heightBox,
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 children: List.generate(ProfilebuttonTitles.length, 
//                 (index) => ListTile(
//                   onTap: (){
//                     switch(index){
//                       case 0:
//                     Get.to(()=>const ShopSettingsScreen());
//                       break;
//                       case 1:
//                     Get.to(()=>const MessageScreen());
//                       break;
//                       default:
//                     }
//                   },
//                   leading: Icon(ProfilebuttonIcon[index],color: white,),
//                   title: normalText(text: ProfilebuttonTitles[index]),
                        
                        
//                           )),
//                          ),
//                         ),    
//                         ],
//                      ));
//                    }  
//                  },
//               ),
                
//            );
//          }
//     }


//========================================================================
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/controllers/auth_controller.dart';
import 'package:emart_seller/controllers/profile_controller.dart';
import 'package:emart_seller/services/store_services.dart';
//import 'package:emart_seller/views/Stylish_LoadingIndicator.dart';
import 'package:emart_seller/views/auth_screen/login_screen.dart';
import 'package:emart_seller/views/message_screen/message_screen.dart';
import 'package:emart_seller/views/profile_screen/edit_profilescreen.dart';
import 'package:emart_seller/views/settings_screens/shop_setting_screen.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var controller = Get.put(ProfileController());
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: purpleColor,
        title: boldText(text: settings, size: 16.0),
        actions: [
          IconButton(onPressed: (){
            Get.to(()=> const EditProfileScreen());
          }, icon: const Icon(Icons.edit)),
          TextButton(onPressed: ()async{
            await Get.find<AuthController>().signOutMethod(context);
            Get.offAll(()=> const LoginScreen());
          }, child: const Icon(Icons.logout_sharp,color: white,)),
        ],
      ),

      body: FutureBuilder(
        future: StoreServices.getProfile(curruntUser!.uid),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
          //   if(!snapshot.hasData){
          //     return const StylishLoadingIndicator();
          //   }else{
          // controller.snapshotData = snapshot.data!.docs[0];
          

     return Column(
          children: [
            ListTile(
              leading: Image.asset(imgProduct).box.roundedFull.clip(Clip.antiAlias).make(),
              title: boldText(text: "vendor_name"),
              subtitle: normalText(text: "'shan@gmail.com"),
            ),
            const Divider(),
            10.heightBox,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: List.generate(ProfilebuttonTitles.length, 
                (index) => ListTile(
                  onTap: (){
                    switch(index){
                      case 0:
                    Get.to(()=>const ShopSettingsScreen());
                      break;
                      case 1:
                    Get.to(()=>const MessageScreen());
                      break;
                      default:
                    }
                  },
                  leading: Icon(ProfilebuttonIcon[index],color: white,),
                  title: normalText(text: ProfilebuttonTitles[index]),
                        
                        
                          )),
                         ),
                        ),    
                        ],
        );
                   }  
                // },
              ),
                
           );
         }
    }
