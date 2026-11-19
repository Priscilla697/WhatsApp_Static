import 'package:flutter/material.dart';

class Message {
  final String chat;
  final bool isMe;

  Message({required this.chat, required this.isMe});
}

class DetailChat extends StatefulWidget {
  const DetailChat({super.key});

  @override
  State<DetailChat> createState() => _DetailChatState();
}

class _DetailChatState extends State<DetailChat> {
  //Tambahkan Controller
  TextEditingController textPesan = TextEditingController();

  final List<Message> _pesan = [
    Message(chat: "tes", isMe: true),
    Message(chat: "apa?", isMe: false),
  ];

  //membuat tombol kirim
  void kirimPesan() {
    if (textPesan.text.trim().isEmpty) return;

    setState(() {
      //untuk perubahan
      _pesan.add(Message(chat: textPesan.text, isMe: true));
    });

    textPesan.clear();

    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          _pesan.add(Message(chat: "Apaan dah?", isMe: false));
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: CircleAvatar(child: const Icon(Icons.person)),
            ),
            const Text("Yuuka"),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("Video Call");
            },
            icon: const Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {
              debugPrint("Call");
            },
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {
              debugPrint("More");
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _pesan.length,
              itemBuilder: (context, index) {
                final psn = _pesan[index];
                return Align(
                  alignment: psn.isMe
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 64, 155, 71),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(psn.chat),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: textPesan,
                    decoration: InputDecoration(
                      hintText: 'Tulis Pesan...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    kirimPesan();
                  },
                  icon: Icon(Icons.send),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
