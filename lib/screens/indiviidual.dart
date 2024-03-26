// ignore_for_file: camel_case_types

import 'package:chat_with_kabi/model/chatmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class individual extends StatefulWidget {
  final ChatModel? chatModel;

  const individual({super.key, this.chatModel});

  @override
  State<individual> createState() => _individualState();
}

class _individualState extends State<individual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 199, 244, 247),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 82, 194, 228),
        leadingWidth: 70,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_back,
                size: 24,
              ),
              CircleAvatar(
                child: Image.asset(
                  (widget.chatModel?.isGroup)!
                      ? "assects/person1.png"
                      : "assects/women.png",
                  fit: BoxFit.cover,
                ),
                radius: 20,
                backgroundColor: Colors.amber,
              )
            ],
          ),
        ),
        title: InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.chatModel?.name as String,
                  style: TextStyle(fontSize: 18.5, fontWeight: FontWeight.bold),
                ),
                Text(
                  "online",
                  style: TextStyle(fontSize: 13, color: Colors.black),
                )
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.videocam),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
          ),
          PopupMenuButton(onSelected: (value) {
            print(value);
          }, itemBuilder: (BuildContext context) {
            return [
              const PopupMenuItem(
                value: "view contact",
                child: Text("view contact"),
              ),
              const PopupMenuItem(
                value: "New broadcast",
                child: Text("New broadcast"),
              ),
              const PopupMenuItem(
                value: "whatsapp web",
                child: Text("whatsapp web"),
              ),
              const PopupMenuItem(
                value: "linked devices",
                child: Text("linked devices"),
              ),
              const PopupMenuItem(
                value: "settings",
                child: Text("settings"),
              ),
            ];
          })
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width - 60,
                      child: Card(
                          margin: EdgeInsets.only(left: 2, right: 2, bottom: 8),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.multiline,
                            maxLines: 5,
                            minLines: 1,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Type the message",
                                prefixIcon: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.emoji_emotions)),
                                suffixIcon: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.attach_file)),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.camera_alt)),
                                  ],
                                ),
                                contentPadding: EdgeInsets.all(5)),
                          ))),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 8, right: 5, left: 2),
                    child: CircleAvatar(
                      radius: 25,
                      child:
                          IconButton(onPressed: () {}, icon: Icon(Icons.mic)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
