import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: <Widget> [
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              child: Image.asset("assets/images/group.png"),
            ),
            title: const Text(
              "Sanju Dhritlahre",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 17.0,
              ),
            ),
            subtitle: Row(
              children: const [
                Icon(
                  Icons.done_all_rounded,
                  size: 20.0,
                  color: Colors.lightBlue,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text("Hi, How are you?")
              ],
            ),
            trailing: const Text("18:40"),
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
