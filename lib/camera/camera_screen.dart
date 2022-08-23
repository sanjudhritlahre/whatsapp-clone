import 'dart:math';

import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:whatsapp_clone/camera/camera_view.dart';
import 'package:whatsapp_clone/camera/video_view.dart';

List<CameraDescription> cameras = <CameraDescription>[];

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  CameraScreenState createState() => CameraScreenState();
}

class CameraScreenState extends State<CameraScreen> {
  late CameraController cameraController;
  late Future<void> cameraValue;
  bool isRecoring = false;
  bool isFlashOn = false;
  bool isCameraFront = true;
  double transform = 0;

  @override
  void initState() {
    super.initState();
    cameraController = CameraController(cameras[0], ResolutionPreset.high);
    cameraValue = cameraController.initialize();
  }

  @override
  void dispose() {
    super.dispose();
    cameraController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children: [
          FutureBuilder(
            future: cameraValue,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: CameraPreview(cameraController),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
          Positioned(
            bottom: 0.0,
            child: Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          color: isFlashOn
                              ? Colors.redAccent
                              : Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: IconButton(
                          icon: Icon(
                            isFlashOn
                                ? Icons.flashlight_on_rounded
                                : Icons.flashlight_off_rounded,
                            color: Colors.white,
                            size: 25.0,
                          ),
                          onPressed: () {
                            setState(() {
                              isFlashOn = !isFlashOn;
                            });

                            isFlashOn
                                ? cameraController.setFlashMode(FlashMode.torch)
                                : cameraController.setFlashMode(FlashMode.off);
                          },
                        ),
                      ),
                      GestureDetector(
                        onLongPress: () async {
                          await cameraController.startVideoRecording();
                          setState(() {
                            isRecoring = true;
                          });
                        },
                        onLongPressUp: () async {
                          XFile videoPath =
                              await cameraController.stopVideoRecording();
                          setState(() {
                            isRecoring = false;
                          });
                          // ignore: use_build_context_synchronously
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  VideoView(imagePath: videoPath.path),
                            ),
                          );
                        },
                        onTap: () {
                          if (!isRecoring) {
                            takePicture(context);
                          }
                        },
                        child: isRecoring
                            ? const Icon(
                                Icons.radio_button_on_rounded,
                                color: Colors.pinkAccent,
                                size: 70.0,
                              )
                            : const Icon(
                                CupertinoIcons.circle_filled,
                                size: 70.0,
                                color: Colors.greenAccent,
                              ),
                      ),
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          color: isCameraFront? Colors.deepPurpleAccent : Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: IconButton(
                          icon: Transform.rotate(
                            angle: transform,
                            child: const Icon(
                              Icons.flip_camera_ios_rounded,
                              color: Colors.white,
                              size: 25.0,
                            ),
                          ),
                          onPressed: () async {
                            setState(() {
                              isCameraFront = !isCameraFront;
                              transform = transform + pi;
                            });
                            int iconCameraPosition = isCameraFront ? 1 : 0;
                            cameraController = CameraController(
                              cameras[iconCameraPosition],
                              ResolutionPreset.high,
                            );
                            cameraValue = cameraController.initialize();
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 2.0),
                  const Text(
                    "Hold for Video, tap for Photo",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void takePicture(BuildContext context) async {
    XFile file = await cameraController.takePicture();

    // ignore: use_build_context_synchronously
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => CameraView(imagePath: file.path),
      ),
    );
  }
}
