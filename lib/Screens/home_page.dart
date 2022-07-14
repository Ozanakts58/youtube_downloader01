import 'package:flutter/material.dart';
import 'package:youtube_downloader01/Screens/paste_link_page.dart';
import 'browser_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red,
        title: Text("Youtube Downloader"),
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.red,
        items: items,
        onTap:(value) {
          setState(() {
            _currentIndex = value;
          });
        },


      ),
    );
  }

  List<Widget> pages = [
    PasteLinkPage(),
    BrowserPage(),
  ];

  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(icon: Icon(Icons.paste), label: "Paste Link"),
    BottomNavigationBarItem(icon: Icon(Icons.network_cell), label: "Browser"),

  ];
}
