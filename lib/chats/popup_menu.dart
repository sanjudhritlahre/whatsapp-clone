import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopUpModalBottomSheet extends StatelessWidget {
  const PopUpModalBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 278,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
      ),
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: const EdgeInsets.all(18.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  quickMenuTool(
                    Icons.insert_drive_file,
                    Colors.deepPurpleAccent,
                    "Documents",
                  ),
                  const SizedBox(width: 40.0),
                  quickMenuTool(
                    CupertinoIcons.camera_on_rectangle_fill,
                    Colors.greenAccent,
                    "Camera",
                  ),
                  const SizedBox(width: 40.0),
                  quickMenuTool(
                    Icons.insert_photo_rounded,
                    Colors.yellow,
                    "Gallery",
                  ),
                ],
              ),
              const SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  quickMenuTool(
                    Icons.audio_file_rounded,
                    Colors.pinkAccent,
                    "Audio",
                  ),
                  const SizedBox(width: 40.0),
                  quickMenuTool(
                    CupertinoIcons.person_2_square_stack_fill,
                    Colors.lightBlueAccent,
                    "Contacts",
                  ),
                  const SizedBox(width: 40.0),
                  quickMenuTool(
                    Icons.location_on_rounded,
                    Colors.redAccent,
                    "Location",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget quickMenuTool(IconData toolIcon, Color toolColor, String toolName) {
  return Column(
    children: <Widget>[
      CircleAvatar(
        radius: 30.0,
        backgroundColor: toolColor,
        child: Icon(
          toolIcon,
          size: 30.0,
          color: Colors.white,
        ),
      ),
      const SizedBox(height: 5.0),
      Text(
        toolName,
        style: const TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}
