import 'package:flutter/material.dart';
import 'package:whatsapp_clone/modal/chat_modal.dart';

class GroupSelection extends StatelessWidget {
  const GroupSelection({Key? key, required this.contact}) : super(key: key);

  final ChatModal contact;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 30.0,
                child: Image.asset(
                  "assets/images/user.png",
                ),
              ),
              const Positioned(
                bottom: 0,
                right: 0,
                top: 35.0,
                child: CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  radius: 13,
                  child: Icon(
                    Icons.clear_rounded,
                    size: 18.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 2.0),
          Text(
            contact.name,
            style: const TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),
    );
  }
}
