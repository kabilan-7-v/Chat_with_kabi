// ignore_for_file: camel_case_types

import 'package:chat_with_kabi/customui/Customcard.dart';
import 'package:chat_with_kabi/model/chatmodel.dart';
import 'package:flutter/material.dart';

class chatpage extends StatefulWidget {
  const chatpage({super.key});

  @override
  State<chatpage> createState() => _chatpageState();
}

class _chatpageState extends State<chatpage> {
  List<ChatModel> chats = [
    ChatModel(
        name: "kabi",
        isGroup: true,
        currentMessage: "good morninig",
        time: "4.00",
        icon: "person1.png"),
    ChatModel(
        name: "sachi",
        isGroup: false,
        currentMessage: "oii",
        time: "4.00",
        icon: "women.png"),
    ChatModel(
        name: "Mom",
        isGroup: false,
        currentMessage: "good morninig",
        time: "4.00",
        icon: "person1.png")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, child: const Icon(Icons.chat)),
        body: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, index) => customchat(chatModel: chats[index]),
        ));
  }
}
