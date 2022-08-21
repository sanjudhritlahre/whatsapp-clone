import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/group/create_group.dart';
import 'package:whatsapp_clone/home/floating_action_button.dart';
import 'package:whatsapp_clone/utils/routes.dart';
import 'camera/camera_screen.dart';
import 'contacts/select_contatcs.dart';
import 'home/home_screen.dart';
import 'dart:async';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => const HomePage(),
        PageRoutes.homePageRoute: (context) => const HomePage(),
        PageRoutes.chatPageRoute: (context) =>
            const BottomFloatingActionButton(),
        PageRoutes.selectContatcsRoute: (context) => const SelectContats(),
        PageRoutes.createGroupRoute: (context) => const CreateGroups(),
      },
    );
  }
}
