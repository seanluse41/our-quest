import 'package:flutter/material.dart';
import 'pages/view_page.dart';

void main() {
  runApp(const OurQuest());
}

class OurQuest extends StatelessWidget {
  const OurQuest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 24,
            backgroundColor: Colors.deepPurple,
            centerTitle: true,
            title: const Text("Sean & Shizuka"),
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.upload),
              ),
              Tab(
                icon: Icon(Icons.photo),
              )
            ]),
          ),
          body: const TabBarView(
            children: [
              ViewPage(),
              ViewPage(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: null,
            child: Icon(Icons.remove_red_eye),
          ),
        ),
      ),
    );
  }
}
