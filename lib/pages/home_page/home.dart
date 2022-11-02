import 'package:flutter/material.dart';

import 'package:flutter_netease_cloud_music/pages/find_page/find.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _current_index = 0;

  static const TextStyle _optionsTextStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetBodyOptions = <Widget>[
    FindPage(),
    Text("Demo B", style: _optionsTextStyle),
    Text("Demo C", style: _optionsTextStyle),
    Text("Demo D", style: _optionsTextStyle),
    Text("Demo E", style: _optionsTextStyle),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _current_index = index;
    });
  }

  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Container(
          height: 32,
          width: 320,
          padding: const EdgeInsets.all(4.0),
          alignment: const Alignment(0, 0),
          decoration: const BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.search_rounded,
                color: Colors.grey,
              ),
              Text(
                "搜索",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        )),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.mic))
        ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
      ),
      drawer: const Drawer(),
      body: Center(
        child: _widgetBodyOptions.elementAt(_current_index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.find_in_page_outlined),
            label: "发现",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.podcasts_rounded),
            label: "播客",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.music_note_outlined), label: "我的"),
          BottomNavigationBarItem(icon: Icon(Icons.heart_broken), label: "关注"),
          BottomNavigationBarItem(
              icon: Icon(Icons.keyboard_command_key_rounded), label: "社区"),
        ],
        currentIndex: _current_index,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black45,
        onTap: _onItemTapped,
      ),
    );
  }
}
