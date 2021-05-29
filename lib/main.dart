import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/call_screen.dart';
import 'package:whatsapp_clone/screens/camera_screen.dart';
import 'package:whatsapp_clone/screens/chat_screen.dart';
import 'package:whatsapp_clone/screens/status_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        // primarySwatch: Colors.teal,
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff25D366),
      ),
      home: WhatsApp(),
    );
  }
}
class WhatsApp extends StatefulWidget {
  @override
  _WhatsAppState createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> with SingleTickerProviderStateMixin{

   TabController ? _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     _controller = new TabController(length: 4, vsync: this,initialIndex: 1);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        elevation: 0.7,
       actions: [
         IconButton(
             onPressed: (){},
             icon: Icon(Icons.search),
         ),
         IconButton(
             onPressed: (){},
             icon: Icon(Icons.more_vert),
         ),
       ],
        bottom: TabBar(
          controller: _controller,
          tabs: [
            new Tab(icon: Icon(Icons.camera_alt_rounded),),
            new Tab(text: "CHATS",),
            new Tab(text: "STATUS",),
            new Tab(text: "CALLS",),
          ],
        ),
      ),

      body: new TabBarView(
        controller: _controller,
          children: [
            new CameraScreen(),
            new ChatScreen(),
            new StatusScreen(),
            new CallScreen(),
          ]
      ),
     floatingActionButton: FloatingActionButton(
       backgroundColor: Color(0xff075E54),
       child: new Icon(Icons.message,color: Colors.white,),
         onPressed: ()=>print("Open Chats")),


      );

  }
}
