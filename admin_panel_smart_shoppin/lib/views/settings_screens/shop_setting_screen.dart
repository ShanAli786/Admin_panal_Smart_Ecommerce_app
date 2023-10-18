import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/widgets/custom_textfield.dart';

import '../widgets/text_style.dart';

class ShopSettingsScreen extends StatelessWidget {
  const ShopSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        
        backgroundColor: purpleColor,
        title: boldText(text: shopSettings, size: 16.0),
        actions: [
         
          TextButton(onPressed: (){}, child: boldText(text: save,size: 18.0)),
        ],
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          
          children: [
            
            customTextField(
              label: name, hint: nameHint,
            ),
            15.heightBox,
            customTextField(
              label: address, hint: shopaddressHint,
            ),
            15.heightBox,
            customTextField(
              label: mobile, hint: shopmobileHint,
            ),
            15.heightBox,
            customTextField(
              label: website, hint: shopwebsiteHint,
            ),
            15.heightBox,
            customTextField(
              isDesc: true,
              label: description, hint: shopdescHint,
            ),
            
          ],
        ),
      ),
    );
  }
}