import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

List<CameraDescription> cameras = <CameraDescription>[];

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController cameraController;

  late Future<void> cameraValue;

  @override
  void initState() {
    super.initState();
    cameraController = CameraController(cameras[0], ResolutionPreset.high);
    cameraValue = cameraController.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
      body: Stack(
        children: [
          FutureBuilder(
            future: cameraValue,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return CameraPreview(cameraController);
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
              padding: const EdgeInsets.only(top: 20.0),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: <Widget> [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget> [
                      IconButton(
                        icon: const Icon(
                          Icons.flashlight_off_rounded,
                          color: Colors.black,
                          size: 30.0,
                        ),
                        onPressed: () {},
                      ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        CupertinoIcons.circle_filled,
                        size: 70,
                        color: Colors.greenAccent,
                      ),
                    ),
                      IconButton(
                        icon: const Icon(
                          Icons.flip_camera_ios_rounded,
                          color: Colors.black,
                          size: 30.0,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 5.0),
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
}
