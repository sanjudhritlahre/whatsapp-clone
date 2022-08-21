import 'package:flutter/material.dart';
import 'package:whatsapp_clone/camera/camera_screen.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  @override
  Widget build(BuildContext context) {
    return const CameraScreen();
  }
}
