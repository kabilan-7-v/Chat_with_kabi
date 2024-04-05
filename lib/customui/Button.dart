import "package:chat_with_kabi/model/chatmodel.dart";
import "package:flutter/material.dart";

class Buttoncard extends StatelessWidget {
  const Buttoncard({super.key, required this.icon, required this.name});

  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 23,
        child: Icon(
          icon,
          size: 26,
        ),
        backgroundColor: Color.fromARGB(255, 232, 219, 235),
      ),
      title: Text(
        name as String,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }
}
