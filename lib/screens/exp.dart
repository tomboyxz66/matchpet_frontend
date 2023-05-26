import 'package:flutter/material.dart';

void main() {
  runApp(TinderApp());
}

class TinderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tinder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TinderScreen(),
    );
  }
}

class TinderScreen extends StatefulWidget {
  @override
  _TinderScreenState createState() => _TinderScreenState();
}

class _TinderScreenState extends State<TinderScreen> {
  List<String> profiles = [
    'John',
    'Jane',
    'Alex',
    'Sarah',
    'Michael',
  ];

  List<String> likedProfiles = [];

  void handleSwipe(bool isLiked) {
    setState(() {
      if (isLiked) {
        likedProfiles.add(profiles.first);
      }
      profiles.removeAt(0);

      if (profiles.isEmpty) {
        // Handle when there are no more profiles to show
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tinder'),
      ),
      body: profiles.isEmpty
          ? Center(
              child: Text('No more profiles to show.'),
            )
          : Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Card(
                        elevation: 4.0,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.6,
                          width: double.infinity,
                          child: Center(
                            child: Text(profiles.first),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: GestureDetector(
                          onTap: () => handleSwipe(false),
                          onPanUpdate: (details) {
                            if (details.delta.dx > 0) {
                              handleSwipe(true);
                            } else if (details.delta.dx < 0) {
                              handleSwipe(false);
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () => handleSwipe(false),
                    ),
                    IconButton(
                      icon: Icon(Icons.favorite),
                      onPressed: () => handleSwipe(true),
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
