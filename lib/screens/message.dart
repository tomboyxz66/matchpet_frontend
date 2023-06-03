import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          buildMessageCard(
            'John Doe',
            'Hello, how are you?',
            '10:30 AM',
          ),
          buildMessageCard(
            'Jane Smith',
            'I\'m good, thank you!',
            '11:00 AM',
          ),
          // Add more messages here
        ],
      ),
    );
  }

  Widget buildMessageCard(String sender, String message, String time) {
    return Card(
      child: ListTile(
        title: Text(sender),
        subtitle: Text(message),
        trailing: Text(time),
        onTap: () {
          // Handle tapping on the message card
          // e.g., open a chat screen or show message details
        },
      ),
    );
  }
}
