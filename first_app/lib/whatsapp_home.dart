import 'package:flutter/material.dart';
import './pages/callscree.dart';
import './pages/chatscreen.dart';
import './pages/statusscreen.dart';
import './pages/camera_screen.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({Key? key}) : super(key: key);

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsApp'),
        elevation: 0.7,
        backgroundColor: const Color.fromRGBO(27, 161, 102, 1),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: const <Widget>[
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: 'CHATS'),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALLS',
            )
          ],
        ),
        actions: const <Widget>[
          Icon(Icons.search),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
          ),
          Icon(Icons.more_vert)
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          camera_screen(),
          chatscreen(),
          statusscreen(),
          callscree(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () => print('Open Chats!'),
      ),
    );
  }
}
