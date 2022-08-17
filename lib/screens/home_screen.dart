import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme.dart';

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
          IconButton(
            icon: const Icon(Icons.more_vert_rounded),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          controller: tabcontroller,
          tabs: [
            const Tab(
              icon: Icon(Icons.camera_alt_rounded),
            ),
            Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: const Tab(
                child: Text(
                  "Chats",
                  style: TextStyle(
                    color: Colors.black),
                ),
              ),
            ),
            const Tab(
              text: "Status",
            ),
            const Tab(
              text: "Calls",
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
