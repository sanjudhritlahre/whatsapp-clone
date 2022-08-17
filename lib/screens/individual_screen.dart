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
    return const Scaffold();
  }
}