import 'package:flutter/material.dart';
import 'package:widget_lanjut/detail_chat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          backgroundColor: Colors.green,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.chat)),
              Tab(icon: Icon(Icons.circle_outlined)),
              Tab(icon: Icon(Icons.call)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Tab 1: Chats
            ListView(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
              children: [
                InkWell(
                  onTap: () {
                    print("Chat Ditekan");

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>DetailChat()),
                    );
                  },
                  child: const Card(
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Yuuka"),
                      subtitle: Text("bang titip keripik"),
                      trailing: Text(
                        "3",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const Card(
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Ghazi"),
                      subtitle: Text("itu barrelnya pas 9mm?"),
                      trailing: Text(
                        "5",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const Card(
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text("+6187928938472"),
                      subtitle: Text(
                        "Hanya hari ini! dapatkan diskon murah...",
                      ),
                      trailing: Text(
                        "2",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const Card(
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Petra anaknya Soloznik"),
                      subtitle: Text("Rotinya dicampur ke kuah soto?"),
                      trailing: Text(
                        "1",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                ),
                const Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("CS DDD"),
                    subtitle: Text("✓✓Jadi saya pelanggan no. 9281 ada..."),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const Card(
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Ako temennya... siapa gak tahu"),
                      subtitle: Text("Luger ku kamu taruh dimana😡"),
                      trailing: Text(
                        "3",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Tab 2: Status
            ListView(
              children: const [
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("SRT"),
                    subtitle: Text("Today at 17:22"),
                  ),
                ),
              ],
            ),
            // Tab 3: Calls
            ListView(
              children: const [
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("his MBG"),
                    subtitle: Text("19:32"),
                    trailing: Icon(Icons.call),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
