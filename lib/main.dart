import 'package:flutter/material.dart';
import 'package:our_quest/pages/upload_page.dart';
import 'package:our_quest/pages/view_page.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            toolbarHeight: 20,
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.upload_file)),
                Tab(icon: Icon(Icons.photo_album)),
              ],
            ),
            title: const Text('Our Quest'),
          ),
          body: const TabBarView(
            children: [
              UploadPage(),
              ViewPage(),
            ],
          ),
        ),
      ),
    );
  }
}
