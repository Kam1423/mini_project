import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mini_project/pages/basicPage.dart';
import 'package:mini_project/pages/firePage.dart';
import 'package:mini_project/pages/itemPage.dart';
import 'package:mini_project/pages/userPages/userPage.dart';

class tabPage extends StatefulWidget {
  const tabPage({super.key});

  @override
  State<tabPage> createState() => _tabPageState();
}

class _tabPageState extends State<tabPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Fire Survival game Wikipedia"),
            bottom: TabBar(
              tabs: [
                Tab(text: "Basic"),
                Tab(text: "Item"),
                Tab(text: "Fire"),
                Tab(text: "User"),
              ]
            ),
          ),
          body: TabBarView(children: [
            basicPage(), //basicPage.dart
            wikiPage(), //itemPage.dart
            firewikiPage(), //firePage.dart
            UserPage() //userPage.dart
          ]),
        )
      ),
    );
  }
}