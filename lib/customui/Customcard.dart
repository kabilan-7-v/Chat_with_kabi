// ignore_for_file: camel_case_types, sort_child_properties_last, avoid_types_as_parameter_names, non_constant_identifier_names

import "package:chat_with_kabi/model/chatmodel.dart";
import "package:chat_with_kabi/screens/indiviidual.dart";
import "package:flutter/material.dart";

class customchat extends StatelessWidget {
  const customchat({super.key, Key, this.chatModel});
  final ChatModel? chatModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (contex) => individual(
                      chatModel: chatModel,
                    )));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              child: Image.asset(
                (chatModel?.isGroup)!
                    ? "assects/person1.png"
                    : "assects/women.png",
                fit: BoxFit.cover,
              ),
              backgroundColor: const Color.fromARGB(255, 248, 245, 245),
            ),
            title: Text(
              (chatModel?.name)!,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                const Icon(Icons.done_all),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  (chatModel?.currentMessage)!,
                  style: const TextStyle(fontSize: 13),
                )
              ],
            ),
            trailing: Text(
              (chatModel?.time)!,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20, left: 80),
            child: Divider(
              thickness: 0.5,
            ),
          )
        ],
      ),
    );
  }
}
