// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:emart_seller/views/message_screen/components/chat_bubbles.dart';

import '../../const/const.dart';
import '../widgets/text_style.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: purpleColor,
        title: boldText(text: username, color: white, size: 18.0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: ((context,index){
                  return ChatBubbles();
                  }),
              ),
              ),
              SizedBox(
                height: 56,
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          isDense: true,
                          hintText: "Enter your message", border: InputBorder.none),

                      )),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.send, color: purpleColor))
                  ],
                ).box.padding(const EdgeInsets.all(12.0)).make(),
              )],
        ),
      ),
    );
  }
}