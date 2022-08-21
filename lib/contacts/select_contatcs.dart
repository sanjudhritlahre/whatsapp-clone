import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/contacts/additional_card.dart';
import 'package:whatsapp_clone/contacts/contact_cards.dart';
import 'package:whatsapp_clone/modal/chat_modal.dart';

class SelectContats extends StatefulWidget {
  const SelectContats({
    Key? key,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SelectContatsState createState() => _SelectContatsState();
}

class _SelectContatsState extends State<SelectContats> {
  List<ChatModal> contacts = [
    ChatModal(
      name: "Sanju Dhritlahre",
      icon: "user.png",
      isGroup: false,
      time: '04:00',
      currentMessage: "Hi, Everyone",
      status: 'A Full Stack Developer',
    ),
    ChatModal(
      name: "Romeyo Boy",
      icon: "user.png",
      isGroup: false,
      time: '11:00',
      currentMessage: "Hi, How are you?",
      status: 'Application Developer',
    ),
    ChatModal(
      name: "Creative Bloke",
      icon: "group.png",
      isGroup: true,
      time: '03:00',
      currentMessage: "Hi, What are you doing?",
      status: 'UI-UX Designer',
    ),
    ChatModal(
      name: "Orisis World",
      icon: "group.png",
      isGroup: true,
      time: '06:00',
      currentMessage: "Hello, I have a nice day!",
      status: 'Flutter Developer',
    ),
    ChatModal(
      name: "Aman Tanda",
      icon: "user.png",
      isGroup: false,
      time: '02:30',
      currentMessage: "Hi, Good Evening!",
      status: 'Web Developer',
    ),
  ];

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
              "Select Contacts",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "256 Contats",
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
        itemCount: contacts.length + 2,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const AdditionalCard(
                name: "New Group",
                icon: Icons.group_add_rounded,
                subtitle: "Create A New Group",
                color: Colors.deepPurpleAccent,
              );
          } else if (index == 1) {
            return const AdditionalCard(
              name: "New Contact",
              icon: Icons.person_add_alt_rounded,
              subtitle: "Add A New Contact",
              color: Colors.pinkAccent,
            );
          }
          return ContatcCards(contact: contacts[index - 2]);
        },
      ),
    );
  }
}
