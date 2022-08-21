import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/home/floating_action_button.dart';
import '../widgets/popup_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // Bottom Navigation Bar Menu
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  // Tab Bar Menu
  late TabController tabcontroller;

  @override
  void initState() {
    super.initState();
    tabcontroller = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.greenAccent,
        title: Row(
          children: const [
            Icon(Icons.wechat_rounded),
            SizedBox(width: 10.0),
            Text("Whatsapp"),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.light_mode_rounded,
              size: 30.0,
              color: Colors.yellowAccent,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              CupertinoIcons.search_circle_fill,
              size: 35.0,
            ),
            onPressed: () {},
          ),
          const PopupMenuItems(),
        ],
        bottom: TabBar(
          indicatorPadding: const EdgeInsets.symmetric(horizontal: 30.0),
          controller: tabcontroller,
          indicatorColor: Colors.deepPurpleAccent,
          tabs: [
            Container(
              height: 30,
              width: 60,
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
              height: 30,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: const Tab(
                child: Text(
                  "Gropus",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              height: 30,
              width: 60,
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
              height: 30,
              width: 60,
              margin: const EdgeInsets.only(bottom: 10.0),
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
          BottomFloatingActionButton(),
          Text("Groups"),
          Text("Status"),
          Text("Calls"),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Colors.deepPurpleAccent,
              icon: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: const Icon(
                  Icons.wechat_rounded,
                  size: 25.0,
                  color: Colors.deepPurpleAccent,
                ),
              ),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.deepPurpleAccent,
              icon: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: const Icon(
                  Icons.auto_mode_rounded,
                  size: 25.0,
                  color: Colors.yellow,
                ),
              ),
              label: 'Story',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.deepPurpleAccent,
              icon: Container(
                height: 35,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: const Icon(
                  CupertinoIcons.add_circled_solid,
                  size: 25.0,
                  color: Colors.greenAccent,
                ),
              ),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.deepPurpleAccent,
              icon: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: const Icon(
                  CupertinoIcons.phone,
                  size: 25.0,
                  color: Colors.redAccent,
                ),
              ),
              label: 'Calls',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.deepPurpleAccent,
              icon: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: const Icon(
                  CupertinoIcons.settings_solid,
                  size: 25.0,
                  color: Colors.blueGrey,
                ),
              ),
              label: 'Settings',
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Colors.white,
          onTap: onItemTapped,
        ),
      ),
    );
  }
}
