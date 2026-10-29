import 'package:flutter/material.dart';

class DetailChat extends StatefulWidget {
  const DetailChat({
    super.key,
  }); // Diubah dari 'new' menjadi nama class 'DetailChat'

  @override
  State<DetailChat> createState() => _DetailChatState();
}

class _DetailChatState extends State<DetailChat> {
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
            child: ListView(
              padding: const EdgeInsets.all(10),
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 64, 155, 71),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text("Hi"),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Tulis Pesan...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.send)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
