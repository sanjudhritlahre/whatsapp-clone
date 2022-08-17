import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme.dart';
import '../widgets.dart/popup_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabcontroller;

  @override
  void initState() {
    super.initState();
    tabcontroller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: WhatsappTheme.primaryColor,
        title: const Text("Whatsapp"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search_rounded),
            onPressed: () {},
          ),
          const PopupMenuItems(),
        ],
        bottom: TabBar(
          controller: tabcontroller,
          tabs: [
            Container(
              height: 25,
              width: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: const Tab(
                icon: Icon(
                  Icons.camera_alt_rounded,
                  color: Colors.black,
                  size: 20.0,
                ),
              ),
            ),
            Container(
              height: 25,
              width: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: const Tab(
                child: Text(
                  "Chats",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              height: 25,
              width: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: const Tab(
                child: Text(
                  "Status",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              height: 25,
              width: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: const Tab(
                child: Text(
                  "Calls",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabcontroller,
        children: const [
          Text("Camera"),
          Text("Chats"),
          Text("Status"),
          Text("Calls"),
        ],
      ),
    );
  }
}


