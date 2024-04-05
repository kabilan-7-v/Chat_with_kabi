// ignore_for_file: camel_case_types

import 'package:chat_with_kabi/model/chatmodel.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class individual extends StatefulWidget {
  final ChatModel? chatModel;

  const individual({super.key, this.chatModel});

  @override
  State<individual> createState() => _individualState();
}

class _individualState extends State<individual> {
  bool show = false;
  FocusNode focusNode = FocusNode();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        setState(() {
          show = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 199, 244, 247),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 82, 194, 228),
        leadingWidth: 70,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
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
            margin: const EdgeInsets.all(6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.chatModel?.name as String,
                  style: const TextStyle(
                      fontSize: 18.5, fontWeight: FontWeight.bold),
                ),
                const Text(
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
            icon: const Icon(Icons.videocam),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width - 60,
                          child: Card(
                              margin: const EdgeInsets.only(
                                  left: 2, right: 2, bottom: 8),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              child: TextFormField(
                                focusNode: focusNode,
                                textAlignVertical: TextAlignVertical.center,
                                keyboardType: TextInputType.multiline,
                                maxLines: 5,
                                minLines: 1,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Type the message",
                                    prefixIcon: IconButton(
                                        onPressed: () {
                                          focusNode.unfocus();
                                          focusNode.canRequestFocus = false;
                                          setState(() {
                                            show = !show;
                                          });
                                        },
                                        icon: const Icon(Icons.emoji_emotions)),
                                    suffixIcon: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              showModalBottomSheet(
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  context: context,
                                                  builder: (context) =>
                                                      bottomsheet());
                                            },
                                            icon:
                                                const Icon(Icons.attach_file)),
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.camera_alt)),
                                      ],
                                    ),
                                    contentPadding: const EdgeInsets.all(5)),
                              ))),
                      Padding(
                        padding:
                            const EdgeInsets.only(bottom: 8, right: 5, left: 2),
                        child: CircleAvatar(
                          radius: 25,
                          child: IconButton(
                              onPressed: () {}, icon: const Icon(Icons.mic)),
                        ),
                      )
                    ],
                  ),
                  show ? emojiselect() : Container(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget bottomsheet() {
    return Container(
      height: 270,
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: const EdgeInsets.all(18),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconcreateion(
                      Icons.insert_drive_file, Colors.indigo, "Document"),
                  const SizedBox(
                    width: 40,
                  ),
                  iconcreateion(Icons.camera_alt, Colors.pink, "Camera"),
                  const SizedBox(
                    width: 40,
                  ),
                  iconcreateion(Icons.insert_photo, Colors.purple, "Gallery"),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconcreateion(Icons.headset, Colors.orange, "Audio"),
                  const SizedBox(
                    width: 40,
                  ),
                  iconcreateion(Icons.location_pin, Colors.green, "Location"),
                  const SizedBox(
                    width: 40,
                  ),
                  iconcreateion(Icons.insert_photo, Colors.blue, "Contact"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget iconcreateion(IconData icon, Color color, String text) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: color,
            child: Icon(
              icon,
              size: 25,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }

  Widget emojiselect() {
    return EmojiPicker(onEmojiSelected: (Emoji, CategoryEmoji) {});
  }
}
