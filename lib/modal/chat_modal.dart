class ChatModal {
  String name;
  String icon;
  bool isGroup;
  String time;
  String currentMessage;
  String status;
  bool addGroupUser;

  ChatModal({
    required this.name,
    required this.icon,
    required this.isGroup,
    required this.time,
    required this.currentMessage,
    required this.status,
    required this.addGroupUser,
  });
}
