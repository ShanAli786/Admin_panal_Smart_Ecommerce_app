import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/widgets/text_style.dart';


class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: purpleColor,
        title: boldText(text: "Product Details", color: white, size: 18.0),
      ),
      
      body:  SingleChildScrollView(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             VxSwiper.builder(
                      autoPlay: true,
                      height: 350,
                      aspectRatio: 16/9,
                      viewportFraction: 1.0,
                      
                      itemCount: 4, 
                      itemBuilder: (context,index){
                      return Image.asset(clothes, width: double.infinity, fit: BoxFit.cover,);
                    }).box.outerShadow.white.make(),
                    10.heightBox,
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: [
                    //     ElevatedButton(onPressed: (){}, child: const Text("Add To Cart")),
                    //     ElevatedButton(onPressed: (){}, child: const Text("Add To Cart"))
                    //   ],
                      
                    // ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start, 
                          children: [
                            boldText(text: "T-Shirt",color: purpleColor,size: 16.0,),
                        10.heightBox,
                        VxRating(
                          isSelectable: true,
                          value: 3.0,
                          onRatingUpdate: (value){},
                          normalColor: textfieldGrey,
                          selectionColor: golden,
                          count: 5,
                          maxRating: 5,
                          size: 25,
                        ),
                        10.heightBox,
                        boldText(text: "Pkr: 550", color: purpleColor, size: 15.0),
          

                         20.heightBox,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: "Color".text.color(purpleColor).make(),
                        ),
                        Row(
                          children: List.generate(3, (index) => VxBox().size(20, 20).roundedFull.color(Vx.randomPrimaryColor).margin(const EdgeInsets.symmetric(horizontal: 6)).make()),
                        ),
                      ],
                    ).box.shadow5xl.white.padding(const EdgeInsets.all(12)).make(),
                    10.heightBox,
                    //Quantity Section ========================================
                  Row(
                     
                      children: [
                        SizedBox(
                          width: 100,
                          child: "Quantity".text.color(purpleColor).make(),
                        ),
                        Row(
                          //children: List.generate(3, (index) => VxBox().size(30, 30).roundedFull.color(Vx.randomPrimaryColor).margin(const EdgeInsets.symmetric(horizontal: 6)).make()),
                        children: [
                          boldText(text: "20 items", color: red, size: 16.0)
                        ],
                        ),
                      ],
                   ).box.white.shadow5xl.padding(const EdgeInsets.all(12)).make(),
                   10.heightBox,
          "Description:".text.color(purpleColor).size(18).make(),
          10.heightBox,
          "Sunaina Textile Unstitched Malai 3 Piece \nwith Net Stole for Girls/Women-116".text.color(Vx.black).make(),
                      ],
                    ),
                 ] ),
             ])     
          )
        ],
        ),
      ),
    );
  }
}