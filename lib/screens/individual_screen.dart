import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme.dart';
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
      // ignore: sized_box_for_whitespace
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(bottom: 10.0),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.deepPurpleAccent,
                    ),
                    child: IconButton(
                      icon: const Icon(
                        CupertinoIcons.camera_on_rectangle_fill,
                        size: 20.0,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      // ignore: sized_box_for_whitespace
                      Container(
                        width: MediaQuery.of(context).size.width - 100,
                        child: Card(
                          margin: const EdgeInsets.only(
                            left: 5.0,
                            bottom: 10.0,
                          ),
                          color: WhatsappTheme.lightOrangeColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          child: TextFormField(
                            keyboardType: TextInputType.multiline,
                            maxLines: 10,
                            minLines: 1,
                            decoration: InputDecoration(
                              hintText: "Send a messages...",
                              border: InputBorder.none,
                              prefixIcon: IconButton(
                                icon: const Icon(CupertinoIcons.smiley_fill),
                                onPressed: () {},
                              ),
                              suffixIcon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                        CupertinoIcons.square_grid_2x2_fill),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                              contentPadding: const EdgeInsets.all(15.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 5.0, bottom: 10.0),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.deepPurpleAccent,
                    ),
                    child: IconButton(
                      icon: const Icon(
                        CupertinoIcons.mic_circle_fill,
                        size: 25.0,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
