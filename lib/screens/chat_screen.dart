import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/chat_model.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: Data.length,
        itemBuilder: (context,i)=>new Column(
          children: [
            new Divider(
              height:10.0,
            ),
            new ListTile(
              leading:CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: new NetworkImage(Data[i].profile),
              ) ,
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new Text(
                    Data[i].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  new Text(
                    Data[i].time,
                    style: TextStyle(color: Colors.blueGrey,fontSize: 14.0),
                  ),
                ],
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top:5),
                child:  new Text(
                  Data[i].message,
                  style: TextStyle(color: Colors.blueGrey,fontSize: 15.0),
                ),
              ),
            )
          ],
        )
    );
  }
}
