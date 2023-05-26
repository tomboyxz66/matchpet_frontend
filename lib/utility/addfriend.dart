import 'package:flutter/material.dart';

class FriendRequestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friend Requests'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          FriendRequestCard(
            name: 'John Doe',
            imageUrl: 'https://example.com/john_doe.jpg',
            mutualFriends: 5,
            onAccept: () {
              // Accept friend request logic
            },
            onReject: () {
              // Reject friend request logic
            },
          ),
          FriendRequestCard(
            name: 'Jane Smith',
            imageUrl: 'https://example.com/jane_smith.jpg',
            mutualFriends: 10,
            onAccept: () {
              // Accept friend request logic
            },
            onReject: () {
              // Reject friend request logic
            },
          ),
          // Add more FriendRequestCard widgets for additional friend requests
        ],
      ),
    );
  }
}

class FriendRequestCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final int mutualFriends;
  final VoidCallback? onAccept;
  final VoidCallback? onReject;

  const FriendRequestCard({
    required this.name,
    required this.imageUrl,
    required this.mutualFriends,
    this.onAccept,
    this.onReject,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
        ),
        title: Text(name),
        subtitle: Text('$mutualFriends mutual friends'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.check),
              onPressed: onAccept,
            ),
            IconButton(
              icon: Icon(Icons.close),
              onPressed: onReject,
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Friend Request Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FriendRequestScreen(),
    );
  }
}
