import 'package:flutter/material.dart';
import 'package:whatsapp/colors.dart';
import 'package:whatsapp/widgets/contact_list.dart';
class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: appbarcolor,
            title: const Text("WhatsApp",
              style:TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ) ,),
            centerTitle: false,
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.grey,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.grey,))
            ],
            bottom: const TabBar(
                indicatorColor: tabcolor,
                indicatorWeight: 4,
                labelColor: tabcolor,
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold
                ),
                tabs: [
              Tab(text: "Chats",),
              Tab(text: "Status",),
              Tab(text: "Calls",),

            ]),
          ),
          body: ContactLists(),
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            backgroundColor: tabcolor,
            child: const Icon(Icons.message),
          ),
        ));
  }
}
