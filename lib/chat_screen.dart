import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final String psychologistName, psychologistProfilePicture;

  const ChatScreen({
    Key? key,
    required this.psychologistName,
    required this.psychologistProfilePicture,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                psychologistName,
                style: const TextStyle(color: Colors.black, fontSize: 18),
              ),
              const Text(
                "Müsait", // Durumu gösteren alan
                style: TextStyle(color: Colors.green, fontSize: 14),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              children: <Widget>[
                const ChatBubble(
                  text: "Selam",
                  isSentByMe: true,
                  time: "9:24",
                  isRead: true,
                ),
                const ChatBubble(
                  text: "Günüm çok kötü gidiyor, hiçbir şey istediğim gibi değil.",
                  isSentByMe: true,
                  time: "9:30",
                  isRead: true,
                ),
                ChatBubble(
                  text: "Merhaba",
                  isSentByMe: false,
                  time: "9:34",
                  isRead: true,
                  profileImage: AssetImage(psychologistProfilePicture),
                ),
                ChatBubble(
                  text: "Seni bu noktaya getiren nedir?",
                  isSentByMe: false,
                  time: "9:35",
                  isRead: true,
                  profileImage: AssetImage(psychologistProfilePicture),
                ),
                const ChatBubble(
                  text: "Bugün ilk iş görüşmem vardı ama anksiyetemden ötürü hiç konuşamadım.",
                  isSentByMe: true,
                  time: "9:37",
                  isRead: true,
                ),
                const ChatBubble(
                  text: "Offf...",
                  isSentByMe: true,
                  time: "9:39",
                  isRead: true,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
                      hintText: "Mesaj yazınız",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.mic, color: Colors.blue),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSentByMe;
  final String time;
  final bool isRead;
  final AssetImage? profileImage;

  const ChatBubble({
    Key? key,
    required this.text,
    required this.isSentByMe,
    required this.time,
    required this.isRead,
    this.profileImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment:
        isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: <Widget>[
          if (!isSentByMe && profileImage != null)
            CircleAvatar(
              radius: 18, // Profil resminin boyutu
              backgroundColor: Colors.transparent,
              backgroundImage: profileImage,
            ),
          const SizedBox(width: 8),
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                color: isSentByMe ? Colors.blue[50] : Colors.grey[200],
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(15),
                  topRight: const Radius.circular(15),
                  bottomLeft:
                  isSentByMe ? const Radius.circular(15) : Radius.zero,
                  bottomRight:
                  isSentByMe ? Radius.zero : const Radius.circular(15),
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        time,
                        style: const TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                      if (isSentByMe) const SizedBox(width: 5),
                      if (isSentByMe && isRead)
                        const Icon(
                          Icons.done_all,
                          color: Colors.blue,
                          size: 14,
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}