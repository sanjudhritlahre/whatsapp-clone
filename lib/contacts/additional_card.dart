import 'package:flutter/material.dart';

class AdditionalCard extends StatelessWidget {
  const AdditionalCard({
    Key? key,
    required this.name,
    required this.icon,
    required this.subtitle,
    required this.color,
  }) : super(key: key);

  final String name;
  final IconData icon;
  final String subtitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: InkWell(
        onTap: () {},
        child: ListTile(
          leading: CircleAvatar(
            radius: 30.0,
            backgroundColor: color,
            child: Icon(
              icon,
              color: Colors.white,
              size: 30.0,
            ),
          ),
          title: Text(
            name,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            subtitle,
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
