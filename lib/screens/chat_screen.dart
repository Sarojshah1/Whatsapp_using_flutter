import 'package:flutter/material.dart';
import 'package:whatsapp/colors.dart';
import 'package:whatsapp/info.dart';
import 'package:whatsapp/widgets/chat_list.dart';
class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarcolor,
        title: Text(info[0]['name'].toString()),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.video_call,color: Colors.grey,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.call,color: Colors.grey,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.grey,)),
        ],
      ),
      body: Column(
        children: [
          const Expanded(child:const  ChatList()),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: mobileChatBoxColor,
              prefixIcon: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Icon(Icons.emoji_emotions, color: Colors.grey,),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(Icons.camera_alt, color: Colors.grey,),
                    Icon(Icons.attach_file, color: Colors.grey,),
                    Icon(Icons.money, color: Colors.grey,),
                  ],
                ),
              ),
              hintText: 'Type a message!',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              contentPadding: const EdgeInsets.all(10),
            ),
          ),

        ],
      ),


    );
  }
}
