// ignore_for_file: unused_element

import "package:chat_with_kabi/customui/avatar_card.dart";
import "package:chat_with_kabi/customui/contactcard.dart";
import "package:chat_with_kabi/model/chatmodel.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class CreateGroup extends StatefulWidget {
  const CreateGroup({super.key});

  @override
  State<CreateGroup> createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  List<ChatModel> contacts = [
    ChatModel(name: "kabi", status: "A full stack developer"),
    ChatModel(name: "mugi", status: "A full stack developer"),
    ChatModel(name: "kamal", status: "A full stack developer"),
    ChatModel(name: "sachi", status: "A full stack developer"),
  ];
  List<ChatModel> group = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 218, 145, 231),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("New group",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
              Text(
                "Add participant",
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
          ],
        ),
        body: Stack(children: [
          ListView.builder(
              itemCount: contacts.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Container(
                    height: group.length > 0 ? 90 : 10,
                  );
                }
                return InkWell(
                    onTap: () {
                      if (contacts[index - 1].select == true) {
                        setState(() {
                          group.remove(contacts[index - 1]);
                          contacts[index - 1].select = false;
                        });
                      } else {
                        setState(() {
                          group.add(contacts[index - 1]);
                          contacts[index - 1].select = true;
                        });
                      }
                    },
                    child: Contactcard(contact: contacts[index - 1]));
              }),
          group.isNotEmpty
              ? Column(children: [
                  Container(
                    height: 75,
                    color: Colors.white,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: contacts.length,
                        itemBuilder: (context, index) {
                          if (contacts[index].select == true) {
                            return InkWell(
                                onTap: () {
                                  setState(() {
                                    group.remove(contacts[index]);
                                    contacts[index].select = false;
                                  });
                                },
                                child: AvtarCard(contact: contacts[index]));
                          } else {
                            return Container();
                          }
                        }),
                  ),
                  Divider(
                    thickness: 1,
                  )
                ])
              : Container()
        ]));
  }
}
