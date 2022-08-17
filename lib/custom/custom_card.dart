import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 30.0,
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
          Icon(Icons.done_all_rounded, size: 20.0, color: Colors.lightBlue,),
          SizedBox(width: 5.0,),
          Text("Hi, How are you?")
        ],
      ),
      trailing: const Text("18:40"),
    );
  }
}
