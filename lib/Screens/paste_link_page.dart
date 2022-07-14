import 'package:flutter/material.dart';
import '../downloader.dart';

class PasteLinkPage extends StatefulWidget {
  const PasteLinkPage({Key? key}) : super(key: key);

  @override
  _PasteLinkPageState createState() => _PasteLinkPageState();
}

class _PasteLinkPageState extends State<PasteLinkPage> {
  TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              controller: _textController,
              decoration:
              InputDecoration(labelText: "Paste Youtube Video Link.."),
            ),
            GestureDetector(
              onTap: () {
                if (_textController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("No Link Pasted"),
                  ));
                }
                else{
                  ///downloand the video
                  Download().downloadVideo(_textController.text.trim() , "Youtube Downloader");
                }
              },
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Download Video",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
