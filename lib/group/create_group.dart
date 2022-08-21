import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/contacts/contact_cards.dart';
import 'package:whatsapp_clone/modal/chat_modal.dart';

class CreateGroups extends StatefulWidget {
  const CreateGroups({
    Key? key,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CreateGroupsState createState() => _CreateGroupsState();
}

class _CreateGroupsState extends State<CreateGroups> {
  List<ChatModal> contacts = [
    ChatModal(
      name: "Sanju Dhritlahre",
      icon: "user.png",
      isGroup: false,
      time: '04:00',
      currentMessage: "Hi, Everyone",
      status: 'A Full Stack Developer',
      addGroupUser: false,
    ),
    ChatModal(
      name: "Romeyo Boy",
      icon: "user.png",
      isGroup: false,
      time: '11:00',
      currentMessage: "Hi, How are you?",
      status: 'Application Developer',
      addGroupUser: false,
    ),
    ChatModal(
      name: "Creative Bloke",
      icon: "group.png",
      isGroup: true,
      time: '03:00',
      currentMessage: "Hi, What are you doing?",
      status: 'UI-UX Designer',
      addGroupUser: false,
    ),
    ChatModal(
      name: "Orisis World",
      icon: "group.png",
      isGroup: true,
      time: '06:00',
      currentMessage: "Hello, I have a nice day!",
      status: 'Flutter Developer',
      addGroupUser: false,
    ),
    ChatModal(
      name: "Aman Tanda",
      icon: "user.png",
      isGroup: false,
      time: '02:30',
      currentMessage: "Hi, Good Evening!",
      status: 'Web Developer',
      addGroupUser: false,
    ),
  ];

  List<ChatModal> groups = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => Navigator.pop(context),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "New Group",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Add Participants",
              style: TextStyle(
                fontSize: 13.0,
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(
              CupertinoIcons.search_circle_fill,
              size: 35.0,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              CupertinoIcons.line_horizontal_3_decrease_circle_fill,
              size: 35.0,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              if (contacts[index].addGroupUser == false) {
                setState(() {
                  contacts[index].addGroupUser = true;
                  groups.add(contacts[index]);
                });
              }
              else {
                  setState(() {
                  contacts[index].addGroupUser = false;
                  groups.remove(contacts[index]);
                });
              }
            },
            child: ContatcCards(contact: contacts[index]),
          );
        },
      ),
    );
  }
}
