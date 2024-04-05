import "package:chat_with_kabi/customui/Button.dart";
import "package:chat_with_kabi/customui/contactcard.dart";
import "package:chat_with_kabi/model/chatmodel.dart";
import "package:chat_with_kabi/screens/creategroup.dart";
import "package:flutter/material.dart";

class Selectcontact extends StatelessWidget {
  const Selectcontact({super.key});

  @override
  Widget build(BuildContext context) {
    List<ChatModel> contacts = [
      ChatModel(name: "kabi", status: "A full stack developer"),
      ChatModel(name: "mugi", status: "A full stack developer"),
      ChatModel(name: "kamal", status: "A full stack developer"),
      ChatModel(name: "sachi", status: "A full stack developer"),
    ];
    return Scaffold(
        appBar: AppBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("select contact",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
              Text(
                "450 contacts",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 26,
              ),
            ),
            PopupMenuButton(onSelected: (value) {
              print(value);
            }, itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: "Invite friends",
                  child: Text("Invite friends"),
                ),
                const PopupMenuItem(
                  value: "contact",
                  child: Text("contact"),
                ),
                const PopupMenuItem(
                  value: "Refresh",
                  child: Text("Refresh"),
                ),
                const PopupMenuItem(
                  value: "Help",
                  child: Text("Help"),
                ),
              ];
            })
          ],
        ),
        body: ListView.builder(
            itemCount: contacts.length + 2,
            itemBuilder: (context, index) {
              if (index == 0) {
                return InkWell(
                  onDoubleTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (builder) => CreateGroup()));
                  },
                  child: Buttoncard(icon: Icons.group, name: "New group"));
              } else if (index == 1) {
                return Buttoncard(
                  icon: Icons.person_add,
                  name: "New Contact",
                );
              }
              return Contactcard(contact: contacts[index - 2]);
            }));
  }
}
