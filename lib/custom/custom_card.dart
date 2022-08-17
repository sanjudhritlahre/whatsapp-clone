import 'package:flutter/material.dart';
import 'package:whatsapp_clone/modal/chat_modal.dart';
import 'package:whatsapp_clone/screens/individual_screen.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, required this.chatsModal}) : super(key: key);

  final ChatModal chatsModal;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => IndividualPage(chatsModal: chatsModal),
        ),
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              child: Image.asset(
                chatsModal.isGroup
                    ? "assets/images/group.png"
                    : "assets/images/user.png",
              ),
            ),
            title: Text(
              chatsModal.name,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 17.0,
              ),
            ),
            subtitle: Row(
              children: [
                const Icon(
                  Icons.done_all_rounded,
                  size: 20.0,
                  color: Colors.lightBlue,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Text(
                  chatsModal.currentMessage,
                  style: const TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 13.0,
                  ),
                ),
              ],
            ),
            trailing: Text(
              chatsModal.time,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20.0, left: 80.0),
            child: Divider(
              thickness: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}
