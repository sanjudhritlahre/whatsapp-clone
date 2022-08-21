import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/camera/camera_page.dart';

class AddMediaPopMenu extends StatelessWidget {
  const AddMediaPopMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Card(
        margin: const EdgeInsets.only(bottom: 75.0, left: 18.0, right: 18.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              bottom: -10,
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 35,
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.redAccent,
                  ),
                  child: const Text(
                    "Close",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Image.asset(
                "assets/images/stories.png",
                fit: BoxFit.cover,
                width: 80,
                height: 80,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const CameraPage(),
                      ),
                    ),
                    child: ListTile(
                      leading: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: const Icon(
                          CupertinoIcons.camera_on_rectangle_fill,
                          color: Colors.white,
                        ),
                      ),
                      title: const Text(
                        'Camera',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        "Capture A New Pictures & Videos",
                        style: TextStyle(
                          color: Colors.blueGrey,
                        ),
                      ),
                      trailing: const Icon(
                        CupertinoIcons.chevron_right_circle_fill,
                        color: Colors.yellow,
                        size: 30.0,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.pinkAccent,
                      ),
                      child: const Icon(
                        CupertinoIcons.photo_fill_on_rectangle_fill,
                        color: Colors.white,
                      ),
                    ),
                    title: const Text(
                      'Photos',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text(
                      "Send Photos & Add Stories",
                      style: TextStyle(
                        color: Colors.blueGrey,
                      ),
                    ),
                    trailing: const Icon(
                      CupertinoIcons.chevron_right_circle_fill,
                      color: Colors.pinkAccent,
                      size: 30.0,
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: const Icon(
                        Icons.auto_mode_rounded,
                        color: Colors.white,
                      ),
                    ),
                    title: const Text(
                      'Stories',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text(
                      "Add Today New Stories",
                      style: TextStyle(
                        color: Colors.blueGrey,
                      ),
                    ),
                    trailing: const Icon(
                      CupertinoIcons.chevron_right_circle_fill,
                      color: Colors.greenAccent,
                      size: 30.0,
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: const Icon(
                        CupertinoIcons.play_circle_fill,
                        color: Colors.white,
                      ),
                    ),
                    title: const Text(
                      'Videos',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text(
                      "Send Videos & Add Stories",
                      style: TextStyle(
                        color: Colors.blueGrey,
                      ),
                    ),
                    trailing: const Icon(
                      CupertinoIcons.chevron_right_circle_fill,
                      color: Colors.lightBlueAccent,
                      size: 30.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
