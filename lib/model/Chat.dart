class Chat {
  final String userPhotoUrl;
  final String username;
  final String lastMessage;
  final String lastMessageDate;
  final bool isOnline;

  const Chat(
      {this.userPhotoUrl,
      this.username,
      this.lastMessage,
      this.lastMessageDate,
      this.isOnline});
}
