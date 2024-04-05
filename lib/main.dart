// ignore_for_file: camel_case_types

import 'package:camera/camera.dart';
import 'package:chat_with_kabi/screens/Home.dart';
import 'package:chat_with_kabi/screens/camerascreen.dart';

import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color.fromARGB(255, 144, 207, 125),
          secondaryHeaderColor: const Color.fromARGB(255, 248, 250, 247)),
      home: const homescreen(),
    );
  }
}
