import 'package:flutter/material.dart';
import 'package:first_app/models/chat_model.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class chatscreen extends StatefulWidget {
  const chatscreen({Key? key}) : super(key: key);

  @override
  State<chatscreen> createState() => _chatscreenState();
}

class _chatscreenState extends State<chatscreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummy.length,
      itemBuilder: (context, i) => Column(
        children: <Widget>[
          const Divider(
            height: 10.0,
          ),
          ListTile(
              leading: CircleAvatar(
                foregroundColor: Colors.white,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(dummy[i].avatar),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    dummy[i].name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    dummy[i].time,
                    style: const TextStyle(color: Colors.grey, fontSize: 14.0),
                  )
                ],
              ),
              subtitle: Container(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    dummy[i].message,
                    style: TextStyle(color: Colors.grey,fontSize: 15.0),

                  ),
              ),
              )
        ],
      ),
    );
  }
}
