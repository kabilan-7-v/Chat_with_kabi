// ignore_for_file: camel_case_types

import 'package:chat_with_kabi/search.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: temp(),
    );
  }
}

class temp extends StatefulWidget {
  const temp({super.key});

  @override
  State<temp> createState() => _tempState();
}

class _tempState extends State<temp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: const Color.fromARGB(255, 222, 236, 168),
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'chat with kabi',
                  style: TextStyle(color: Colors.grey),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(onPressed: () {}, child: const Text("chats")),
                MaterialButton(onPressed: () {}, child: const Text("status")),
                MaterialButton(onPressed: () {}, child: const Text("calls")),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 75),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0))),
            child: const Text("Mom "),
          ),
          Container(
            color: Colors.grey[300],
            height: 0.5,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 75),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0))),
            child: const Text("sachita"),
          ),
          Container(
            color: Colors.grey[300],
            height: 0.5,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 75),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0))),
            child: const Text("Damin risho"),
          ),
          Container(
            color: Colors.grey[300],
            height: 0.5,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 75),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0))),
            child: const Text("Damin Rido"),
          ),
          Container(
            color: Colors.grey[300],
            height: 0.5,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 75),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0))),
            child: const Text("Priya"),
          ),
          Container(
            color: Colors.grey[300],
            height: 0.5,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 75),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0))),
            child: const Text("Praveena"),
          ),
          Container(
            color: Colors.grey[300],
            height: 0.5,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 75),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              child: const Text("Nathigha")),
          Container(
            color: Colors.grey[300],
            height: 0.5,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0))),
            child: const Text("Swathi "),
          ),
          Container(
            color: Colors.grey[300],
            height: 0.5,
          )
        ],
      ),
    );
  }
}
