import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //
        primarySwatch: Colors.green,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        elevation: 0.0,
        title: Image.asset(
          'assets/images/logo.png',
          height: 100,
          width: 200,
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
    );
  }
}
