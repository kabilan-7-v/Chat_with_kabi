class ChatModel {
  String? name;
  String? icon;
  bool? isGroup;
  bool select = false;
  String? currentMessage;
  String? time;
  String? status;
  ChatModel(
      {this.name,
      this.icon,
      this.isGroup,
      this.currentMessage,
      this.time,
      this.status,
      this.select = false});
}
