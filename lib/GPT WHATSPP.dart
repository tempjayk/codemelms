import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true, // Enable Material 3
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF075E54)), // WhatsApp theme
      ),
      home: WhatsAppHome(),
    );
  }
}

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(icon: Icon(Icons.camera_alt_outlined), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(text: "Chats"),
            Tab(text: "Status"),
            Tab(text: "Calls"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ChatsScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF25D366),
        child: Icon(Icons.message, color: Colors.white),
      ),

    );
  }
}

// 📌 CHATS SCREEN
class ChatsScreen extends StatelessWidget {
  final List<Map<String, String>> chats = [
    {"name": "John Doe", "message": "Hey, how are you?", "time": "10:30 AM", "image": "https://via.placeholder.com/150"},
    {"name": "Alice", "message": "Let's catch up soon!", "time": "9:45 AM", "image": "https://via.placeholder.com/150"},
    {"name": "Bob", "message": "Check this out!", "time": "Yesterday", "image": "https://via.placeholder.com/150"},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(chats[index]["image"]!),
          ),
          title: Text(chats[index]["name"]!, style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(chats[index]["message"]!),
          trailing: Text(chats[index]["time"]!, style: TextStyle(color: Colors.grey)),
        );
      },
    );
  }
}

// 📌 STATUS SCREEN
class StatusScreen extends StatelessWidget {
  final List<String> statuses = ["My Status", "John", "Alice", "Bob"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: statuses.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Stack(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage("https://via.placeholder.com/150"),
              ),
              if (index == 0)
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.green,
                    child: Icon(Icons.add, size: 15, color: Colors.white),
                  ),
                ),
            ],
          ),
          title: Text(statuses[index]),
          subtitle: Text(index == 0 ? "Tap to add status" : "Today, 10:00 AM"),
        );
      },
    );
  }
}

// 📌 CALLS SCREEN
class CallsScreen extends StatelessWidget {
  final List<Map<String, String>> calls = [
    {"name": "John Doe", "type": "Incoming", "time": "Today, 12:30 PM"},
    {"name": "Alice", "type": "Missed", "time": "Yesterday, 4:20 PM"},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: calls.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage("https://via.placeholder.com/150"),
          ),
          title: Text(calls[index]["name"]!, style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Row(
            children: [
              Icon(
                calls[index]["type"] == "Missed" ? Icons.call_missed : Icons.call_received,
                color: calls[index]["type"] == "Missed" ? Colors.red : Colors.green,
                size: 18,
              ),
              SizedBox(width: 5),
              Text(calls[index]["time"]!),
            ],
          ),
          trailing: Icon(Icons.call, color: Color(0xFF075E54)),
        );
      },
    );
  }
}
