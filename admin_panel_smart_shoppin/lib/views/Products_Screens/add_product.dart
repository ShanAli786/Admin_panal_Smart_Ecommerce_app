import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/Products_Screens/components/product_dropdown.dart';
import 'package:emart_seller/views/Products_Screens/components/product_images.dart';
import 'package:emart_seller/views/widgets/custom_textfield.dart';

import '../widgets/text_style.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        backgroundColor: purpleColor,
        title: boldText(text: "Add Product", color: white, size: 18.0),
        actions: [TextButton(onPressed: () {}, child: boldText(text: "Save"))],
      ),
      body: SingleChildScrollView(
physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            10.heightBox,
            customTextField(
              hint: "eg. T-Shirt",
              label: "Product Name",
            ),
            30.heightBox,
            customTextField(
                hint: "eg. this is awesom product for summer....",
                label: "Description",
                isDesc: true),
            10.heightBox,
            customTextField(
              hint: "eg. 500",
              label: "Price",
            ),
            10.heightBox,
            customTextField(
              hint: "eg. 500",
              label: "Price",
            ),
            10.heightBox,
            customTextField(
              hint: "eg. 50 pieces",
              label: "Quantity",
            ),
            10.heightBox,
            ProductDropdown(),
            10.heightBox,
            ProductDropdown(),
            10.heightBox,
const Divider(),
            normalText(text: "Choose Product Images"),
            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                3,
                (index) => productImages(lable: "${index + 1}"),
              ),
            ),
            10.heightBox,
            normalText(
                text: "First Image Will be your Display Image",
                color: textfieldGrey),
            10.heightBox,
            const Divider(),
            normalText(text: "Choose Product color"),
            10.heightBox,
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: List.generate(
                  12,
                  (index) => Stack(
                        alignment: Alignment.center,
                        children: [
                          VxBox()
                              .color(Vx.randomPrimaryColor)
                              .roundedFull
                              .size(30, 30)
                              .make(),
                          const Icon(
                            Icons.done,
                            color: white,
                          ),
                        ],
                      )),
            ),
          ],
        ),
      ).box.margin(const EdgeInsets.symmetric(vertical: 8)).make(),
    );
  }
}
