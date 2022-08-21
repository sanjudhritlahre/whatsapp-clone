import 'package:flutter/material.dart';
import 'package:whatsapp_clone/modal/chat_modal.dart';

class ContatcCards extends StatelessWidget {
  const ContatcCards({Key? key, required this.contact}) : super(key: key);

  final ChatModal contact;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: InkWell(
        onTap: () {},
        child: ListTile(
          leading: CircleAvatar(
            radius: 30.0,
            child: Image.asset("assets/images/user.png"),
          ),
          title: Text(
            contact.name,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            contact.status,
            style: const TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
            ),
          ),
        ),
      ),
    );
  }
}
