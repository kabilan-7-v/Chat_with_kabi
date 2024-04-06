import 'dart:ui';

import 'package:camera/camera.dart';
import 'package:chat_with_kabi/screens/cameraview.dart';
import 'package:chat_with_kabi/screens/videoview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

late List<CameraDescription>? cameras;

class camerascreen extends StatefulWidget {
  const camerascreen({super.key});

  @override
  State<camerascreen> createState() => _camerascreenState();
}

class _camerascreenState extends State<camerascreen> {
  CameraController? _cameraController;
  Future<void>? cameraValue;
  bool isRecording = false;
  String videopath = "";
  bool flash = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _cameraController = CameraController(cameras![0], ResolutionPreset.high);
    cameraValue = _cameraController!.initialize();
  }

  @override
  void dispose() {
    super.dispose();
    _cameraController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder(
              future: cameraValue,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child:
                          CameraPreview(_cameraController as CameraController));
                } else {
                  return const Center(
                    child: const CircularProgressIndicator(),
                  );
                }
              }),
          Positioned(
            bottom: 0.0,
            child: Container(
              color: Colors.black,
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      
                      IconButton(
                          onPressed: () {},
                          
                          icon: Icon(
                            flash ? Icons.flash_on : Icons.flash_off,

                            color: Colors.white,
                            size: 20,
                          )),
                          
                      GestureDetector(
                        onLongPress: () async {
                          await _cameraController?.startVideoRecording();

                          setState(() {
                            isRecording = true;
                          });
                        },
                        onLongPressUp: () async {
                          XFile videopath =
                              await _cameraController!.stopVideoRecording();
                          setState(() {
                            isRecording = false;
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => videoviewpage(
                                        path: videopath.path,
                                      )));
                        },
                        child: InkWell(
                          onTap: () {
                            if (!isRecording) {
                              takephoto(context);
                            }
                          },
                          child: isRecording
                              ? const Icon(
                                  Icons.radio_button_on,
                                  color: Colors.red,
                                  size: 80,
                                )
                              : const Icon(
                                  Icons.panorama_fish_eye,
                                  color: Colors.white,
                                  size: 38,
                                ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.flip_camera_ios,
                            color: Colors.white,
                            size: 20,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    "Hold for video,tap for photo",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void takephoto(BuildContext context) async {
    final path =
        join((await getTemporaryDirectory()).path, "${DateTime.now()}.png");
    XFile picture = await _cameraController!.takePicture();
    picture.saveTo(path);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => cameraviewpage(path: path)),
    );
  }
}
