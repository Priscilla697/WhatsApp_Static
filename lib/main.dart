import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          backgroundColor: Colors.green,
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.chat),),
            Tab(icon: Icon(Icons.circle_outlined),),
            Tab(icon: Icon(Icons.call),),
          ])
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
              Card(
              child: ListTile(
              leading: Icon(
                Icons.person
              ),
              title: Text("Yuuka"),
              subtitle: Text("bang titip keripik"),
              trailing: Text("3", style: TextStyle(
                color: Colors.green
              ),),
            ),
            ),
            Card(
              child: ListTile(
              leading: Icon(
                Icons.person
              ),
              title: Text("Ghazi"),
              subtitle: Text("itu barrelnya pas 9mm?"),
              trailing: Text("5", style: TextStyle(
                color: Colors.green
              ),),
            ),
            ),
              ],
            ),
            Column(
              children: [
                Card(child: ListTile(
                  leading: Icon(
                    Icons.person
                  ),
                    title: Text("SRT"),
                    subtitle: Text("Today at 17:22"),
                    trailing: Text("")
                ),),
              ],
            ),
            Column(
              children: [
                Card(child: ListTile(
                  leading: Icon(
                    Icons.person
                  ),
                  title: Text("his MBG"),
                  subtitle: Text("19:32"),
                  trailing: Icon(
                    Icons.call
                  ),
                ),)
              ],
            )
          ],
        ),
      )
    );
  }
}