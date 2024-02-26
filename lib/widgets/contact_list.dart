import 'package:flutter/material.dart';
import 'package:whatsapp/colors.dart';
import 'package:whatsapp/info.dart';
import 'package:whatsapp/screens/chat_screen.dart';
class ContactLists extends StatelessWidget {
  const ContactLists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10.0),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: info.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const ChatScreen(),),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom:20.0),
                      child: ListTile(
                        title: Text(
                          info[index]['name'].toString(),
                          style: TextStyle(fontSize: 18),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top:6.0),
                          child: Text(
                            info[index]['message'].toString(),
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(info[index]['profilePic'].toString()),

                        ),
                        trailing: Text(
                          info[index]['time'].toString()
                        ),


                      ),
                    ),
                  );
                },),

          ),
          const Divider(color: dividercolor,indent: 100,)
        ],
      ),
    );
  }
}
