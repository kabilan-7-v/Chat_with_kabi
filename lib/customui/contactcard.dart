import "package:chat_with_kabi/model/chatmodel.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class Contactcard extends StatefulWidget {
  const Contactcard({super.key, required this.contact});
  final ChatModel contact;

  @override
  State<Contactcard> createState() => _ContactcardState();
}

class _ContactcardState extends State<Contactcard> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        child: Stack(children: [
          CircleAvatar(
            radius: 23,
            child: Image.asset(
              "assects/person1.png",
              fit: BoxFit.cover,
            ),
            backgroundColor: const Color.fromARGB(255, 248, 245, 245),
          ),
          widget.contact.select as bool
              // true
              ? const Positioned(
                  bottom: 4,
                  right: 5,
                  child: const CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 159, 134, 192),
                      radius: 11,
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 18,
                      )),
                )
              : Container(),
        ]),
      ),
      title: Text(
        widget.contact.name as String,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        widget.contact.status as String,
        style: const TextStyle(fontSize: 13),
      ),
    );
  }
}
