import 'package:flutter/material.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1.0,
          color: Colors.pinkAccent,
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(20.0),
            bottomLeft: Radius.circular(20.0),
            ),
          ),
          child: Stack(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(
                    top: 10.0, bottom: 20.0, left: 10.0, right: 80.0),
                child: Text(
                  "Hey, You are also a very funny man. You are also a good person.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                bottom: 4.0,
                right: 10.0,
                child: Row(
                  children: const <Widget>[
                    Text(
                      "04:30",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                    SizedBox(width: 5.0),
                    Icon(
                      Icons.done_all_rounded,
                      color: Colors.lightBlueAccent,
                      size: 20.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
