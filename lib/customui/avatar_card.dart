import 'package:chat_with_kabi/model/chatmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AvtarCard extends StatelessWidget {
  const AvtarCard({super.key, required this.contact});
  final ChatModel contact;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      Stack(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          child: CircleAvatar(
            radius: 23,
            child: Image.asset(
              "assects/person1.png",
              fit: BoxFit.cover,
            ),
            backgroundColor: const Color.fromARGB(255, 248, 245, 245),
          ),
        ),
        const Positioned(
          bottom: 0,
          right: 5,
          child: const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 159, 134, 192),
              radius: 11,
              child: Icon(
                Icons.clear,
                color: Color.fromARGB(255, 209, 202, 202),
                size: 13,
              )),
        )
      ]),
      SizedBox(
        height: 2,
      ),
      Text(
        contact.name as String,
        style: TextStyle(fontSize: 12),
      ),
    ]);
  }
}
