import 'package:flutter/material.dart';
import "package:story_view/story_view.dart";


class MoreStories extends StatefulWidget {
  @override
  _MoreStoriesState createState() => _MoreStoriesState();
}

class _MoreStoriesState extends State<MoreStories> {
  final storyController = StoryController();

  @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: null,
          )
        ],
        backgroundColor: Colors.black54,
        elevation: 0.0,
        title: Image.asset(
          'assets/images/logo.png',
          height: 120,
          width: 150,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('School'),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.black26,
              ),
            ),
            ListTile(
              title: Text('Assignment'),
              onTap: () {
                // Update the state of the app.
                // ...
                // Then close the drawer.
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Events'),
              onTap: () {
                // Update the state of the app.
                // ...
                // Then close the drawer.
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: StoryView(
        storyItems: [
          StoryItem.text(
            title: "I guess you'd love to see more of our food. That's great.",
            backgroundColor: Colors.blue,
          ),
          StoryItem.text(
            title: "Nice!\n\nTap to continue.",
            backgroundColor: Colors.red,
          ),
          // StoryItem.pageImage(
          //   url:
          //       "https://image.ibb.co/cU4WGx/Omotuo-Groundnut-Soup-braperucci-com-1.jpg",
          //   caption: "Still sampling",
          //   controller: storyController,
          // ),
          // StoryItem.pageImage(
          //     url: "https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif",
          //     caption: "Working with gifs",
          //     controller: storyController),
          // StoryItem.pageImage(
          //   url: "https://media.giphy.com/media/XcA8krYsrEAYXKf4UQ/giphy.gif",
          //   caption: "Hello, from the other side",
          //   controller: storyController,
          // ),
          // StoryItem.pageImage(
          //   url: "https://media.giphy.com/media/XcA8krYsrEAYXKf4UQ/giphy.gif",
          //   caption: "Hello, from the other side2",
          //   controller: storyController,
          // ),
        ],
        onStoryShow: (s) {
          print("Showing a story");
        },
        onComplete: () {
          print("Completed a cycle");
        },
        progressPosition: ProgressPosition.top,
        repeat: false,
        controller: storyController,
      ),
    );
  }
}