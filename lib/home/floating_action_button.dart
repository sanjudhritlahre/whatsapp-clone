import 'package:flutter/material.dart';
import 'package:whatsapp_clone/custom/custom_card.dart';
import 'package:whatsapp_clone/modal/chat_modal.dart';
import '../contacts/select_contatcs.dart';

class BottomFloatingActionButton extends StatefulWidget {
  const BottomFloatingActionButton({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BottomFloatingActionButtonState createState() =>
      _BottomFloatingActionButtonState();
}

List<ChatModal> chats = [
  ChatModal(
    name: "Sanju Dhritlahre",
    icon: "user.png",
    isGroup: false,
    time: '04:00',
    currentMessage: "Hi, Everyone",
    status: '',
  ),
  ChatModal(
    name: "Romeyo Boy",
    icon: "user.png",
    isGroup: false,
    time: '11:00',
    currentMessage: "Hi, How are you?",
    status: '',
  ),
  ChatModal(
    name: "Creative Bloke",
    icon: "group.png",
    isGroup: true,
    time: '03:00',
    currentMessage: "Hi, What are you doing?",
    status: '',
  ),
  ChatModal(
    name: "Orisis World",
    icon: "group.png",
    isGroup: true,
    time: '06:00',
    currentMessage: "Hello, I have a nice day!",
    status: '',
  ),
  ChatModal(
    name: "Aman Tanda",
    icon: "user.png",
    isGroup: false,
    time: '02:30',
    currentMessage: "Hi, Good Evening!",
    status: '',
  ),
];

class _BottomFloatingActionButtonState
    extends State<BottomFloatingActionButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const SelectContats(),
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        child: const Icon(
          Icons.wechat_rounded,
          size: 30.0,
          color: Colors.white,
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
