import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  //
  //abbbooopnnn
  //hkksjiijjsk
  //hooommddkkk

  //

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('appbar'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  counter--;
                });
              },
              child: Text(
                'MINES',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                '$counter',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              child: Text(
                'PLUS',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.settings_backup_restore,
        ),
        onPressed: () {
          setState(() {
            counter = 0;
          });
        },
      ),
    );
  }
}
