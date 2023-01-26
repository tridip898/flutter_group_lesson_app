class ChatModel{
  final String name;
  final String image;
  final String message;
  final String time;

  ChatModel(this.name, this.image, this.message, this.time);
}

List<ChatModel> chatModel=[
  ChatModel("Jenny Wilson", "lib/images/women1.jpg", "Hi!", "9:13"),
  ChatModel("Ronald Richards", "lib/images/men3.jpg", "Thank for your lesson", "9:19"),
];