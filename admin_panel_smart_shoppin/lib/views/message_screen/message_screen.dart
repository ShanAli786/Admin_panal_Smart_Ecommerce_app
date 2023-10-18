import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/message_screen/chat_Screen.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:get/get.dart';


class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: purpleColor,
        title: boldText(text: message, color: white, size: 18.0),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: List.generate(120, (index) =>  ListTile(
              onTap: (){
                Get.to(()=>const ChatScreen());
              },
              leading:  const CircleAvatar(
                backgroundColor: purpleColor,
                child: Icon(Icons.person
                
                )),
                title: boldText(text: "username", color: purpleColor),
                subtitle: normalText(text: "last message .....", color: fontGrey),
                trailing: normalText(text: "4:45 PM", color: fontGrey),
            )),
          ),
        ),
      ),
    );
  }
}