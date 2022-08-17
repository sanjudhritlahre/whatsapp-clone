import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/custom/custom_card.dart';
import 'package:whatsapp_clone/modal/chat_modal.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ChatPageState createState() => _ChatPageState();
}

List<ChatModal> chats = [
  ChatModal(
    name: "Sanju Dhritlahre",
    icon: "user.png",
    isGroup: false,
    time: '04:00',
    currentMessage: "Hi, Everyone",
  ),
  ChatModal(
    name: "Romeyo Boy",
    icon: "user.png",
    isGroup: false,
    time: '11:00',
    currentMessage: "Hi, How are you?",
  ),
  ChatModal(
    name: "Creative Bloke",
    icon: "group.png",
    isGroup: true,
    time: '03:00',
    currentMessage: "Hi, What are you doing?",
  ),
  ChatModal(
    name: "Orisis World",
    icon: "group.png",
    isGroup: true,
    time: '06:00',
    currentMessage: "Hello, I have a nice day!",
  ),
  ChatModal(
    name: "Aman Tanda",
    icon: "user.png",
    isGroup: false,
    time: '02:30',
    currentMessage: "Hi, Good Evening!",
  ),
];

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          CupertinoIcons.chat_bubble_2_fill,
          size: 30.0,
        ),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => (CustomCard(
          chatsModal: chats[index],
        )),
      ),
    );
  }
}
