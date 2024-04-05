// ignore_for_file: camel_case_types, override_on_non_overriding_member

import "package:chat_with_kabi/pages/camercapage.dart";
import "package:chat_with_kabi/pages/chatpage.dart";
import "package:flutter/material.dart";

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("chat with kabi"),
          backgroundColor: Color.fromARGB(255, 82, 194, 228),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            PopupMenuButton(onSelected: (value) {
              print(value);
            }, itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: "New group",
                  child: Text("New grop"),
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
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(
                text: "chats",
              ),
              Tab(
                text: "status",
              ),
              Tab(
                text: "calls",
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            camerapage(),
            chatpage(),
            Text("status"),
            Text("calls"),
          ],
        ),
      ),
    );
  }
}
