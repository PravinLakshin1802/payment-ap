import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  ChatScreenState createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              dense: true,
              leading: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Center(
                  child: Text(
                    index.toString(),
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
              trailing: const SizedBox(
                height: 35,
                child: Text(
                  "01/01/2023",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              title: const Text(
                "Amrat",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: const Text(
                "BE Software",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
