import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../modal/chat_modal.dart';

class IndividualPage extends StatefulWidget {
  const IndividualPage({Key? key, required this.chatsModal}) : super(key: key);

  final ChatModal chatsModal;

  @override
  // ignore: library_private_types_in_public_api
  _IndividualPageState createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70.0,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.arrow_back_ios,
                size: 24.0,
              ),
            ),
            CircleAvatar(
              radius: 20.0,
              child: Image.asset(
                widget.chatsModal.isGroup
                    ? "assets/images/group.png"
                    : "assets/images/user.png",
              ),
            ),
          ],
        ),
        title: InkWell(
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.chatsModal.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  letterSpacing: 1.2,
                ),
              ),
              const Text(
                "Last Seen Today At 04:30",
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              CupertinoIcons.phone_circle_fill,
              size: 30,
            ),
            onPressed: () {},
          ),
           IconButton(
            icon: const Icon(
              CupertinoIcons.videocam_circle_fill,
              size: 30,
            ),
            onPressed: () {},
          ),
           IconButton(
            icon: const Icon(
              CupertinoIcons.line_horizontal_3_decrease_circle_fill,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
