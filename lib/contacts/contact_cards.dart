import 'package:flutter/material.dart';
import 'package:whatsapp_clone/modal/chat_modal.dart';

class ContatcCards extends StatelessWidget {
  const ContatcCards({Key? key, required this.contact}) : super(key: key);

  final ChatModal contact;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: ListTile(
        leading: SizedBox(
          height: 75,
          width: 73,
          child: Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 30.0,
                child: Image.asset("assets/images/user.png"),
              ),
              contact.addGroupUser
                  ? const Positioned(
                      bottom: 1,
                      right: 5,
                      child: CircleAvatar(
                        backgroundColor: Colors.greenAccent,
                        radius: 13,
                        child: Icon(
                          Icons.check_circle_rounded,
                          size: 18.0,
                          color: Colors.white,
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
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
    );
  }
}
