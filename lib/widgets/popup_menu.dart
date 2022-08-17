import 'package:flutter/material.dart';

class PopupMenuItems extends StatelessWidget {
  const PopupMenuItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
        // ignore: avoid_print
        onSelected: (value) => print(value),
        itemBuilder: (BuildContext context) {
          return [
            const PopupMenuItem(
              value: "New Contacts",
              child: Text("New Contacts"),
            ),
            const PopupMenuItem(
              value: "New Group",
              child: Text("New Group"),
            ),
            const PopupMenuItem(
              value: "New Broadcast",
              child: Text("New Broadcast"),
            ),
            const PopupMenuItem(
              value: "Linked Devices",
              child: Text("Linked Devices"),
            ),
            const PopupMenuItem(
              value: "Starred Messages",
              child: Text("Starred Messages"),
            ),
            const PopupMenuItem(
              value: "View Settings",
              child: Text("View Settings"),
            ),
          ];
        });
  }
}
