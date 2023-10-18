import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/orders_screen/components/order_place.dart';
import 'package:emart_seller/views/widgets/our_button.dart';
import '../widgets/text_style.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: purpleColor,
        title: boldText(text: orderdetails, color: white, size: 18.0),
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        //width: context.screenWidth,
          child: ourButton(color: green, onPress: (){}, text: "Confirm Order"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [

            //==================oreder delivery status section=========================================
            Column(
              children: [
                10.heightBox,
                boldText(text: "Order Status", color: purpleColor, size: 18.0),
                SwitchListTile(value: true, onChanged: (value){},title: boldText(text: "Confirmed",color: purpleColor),),
                SwitchListTile(value: false, onChanged: (value){},title: boldText(text: "pending",color: purpleColor),),
                SwitchListTile(value: false, onChanged: (value){},title: boldText(text: "On delivery",color: purpleColor),),
                SwitchListTile(value: true, onChanged: (value){},title: boldText(text: "Deliverd",color: purpleColor),), 
              ],
              
            ).box.padding(const EdgeInsets.all(8)).outerShadow.white.border(color: lightGrey).make(),



            //=======================order Details Section================================================
              Column(
                children: [
                  OrderPlaceDetails(
                    d1:" data['oder_code']",
                    d2: "shipping method",
                    title1: "order code",
                    title2: "Shipping Method",
                  ),
                  OrderPlaceDetails(
                    d1:DateTime.now(),
                    d2: "payment",
                    title1: "order date",
                    title2: "Payment Method",
                  ),
                  OrderPlaceDetails(
                    d1: "unpaid",
                    d2: "order placed",
                    title1: "payment status",
                    title2: "delivery status",
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: SingleChildScrollView(
                      
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             boldText(text: "Shipping Address",color: purpleColor),
                             "{data['order_by_name]}".text.make(),
                             "{data['order_by_email]}".text.make(),
                             "{data['order_by_address]}".text.make(),
                             "{data['order_by_city]}".text.make(),
                             "{data['order_by_state]}".text.make(),
                             "{data['order_by_phone]}".text.make(),
                             "{data['order_by_postalcode]}".text.make(),
                            ],
                          ),
                          SizedBox(
                            width: 130,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                boldText(text: "total amount",color: purpleColor),
                                boldText(text: "Pkr 500",size: 16.0,color: darkGrey),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
        
              ).box.outerShadow.white.make(),
              const Divider(),
              10.heightBox,
              boldText(text: "Orderd products",size: 16.0,color: darkGrey),
              10.heightBox,
              ListView(
                physics:const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: List.generate(3, (index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OrderPlaceDetails(
                    title1:" data['oders'][index]['title']",
                    title2: " data['oders'][index]['tprice']",
                    d1: "{data['orders'][index]['qty']}x",
                    d2: "Refundable",
        
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Container(
                        width: 30,
                        height: 30,
                        color: purpleColor
                      ),
                      
                      ),
                      const Divider(),
                  ],
                );
               
                }
               ).toList(),
              ).box.outerShadow.white.margin(const EdgeInsets.only(bottom: 4)).make(),
              20.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}