import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kalz_studio/pages/create_post.dart';
import 'package:kalz_studio/pages/home.dart';
import 'package:kalz_studio/pages/notifications.dart';
import 'package:kalz_studio/pages/profile.dart';
import 'package:kalz_studio/pages/search.dart';

import 'authentication.dart';
import 'firebaseAuthDemo.dart';

class MainPage extends StatefulWidget {
  final User user;

  const MainPage({Key key, this.user}) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  FirebaseAuth _auth = FirebaseAuth.instance;
  String text = 'https://medium.com/@suryadevsingh24032000';
  String subject = 'follow me';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("InstaLike"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.amber,
                backgroundImage: AssetImage('assets/images/a.png'),
                radius: 100,
              ),
              arrowColor: Colors.amber,
              accountEmail: Text('solankikaran307@gmail.com'),
              accountName: Text('Solanki karan'),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('My Account'),
              onTap: () {},
            ),
            new Divider(),
            ListTile(
              leading: Icon(Icons.thumb_up),
              title: Text('My Likes'),
              onTap: () {},
            ),
            new Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {},
            ),
            new Divider(),
            ListTile(
              leading: Icon(Icons.support_agent),
              title: Text('Supports'),
              onTap: () {},
            ),
            new Divider(),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('LogOut'),
              onTap: () {
                _signOut().whenComplete(() {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => FirebaseAuthDemo()));
                });
              },
            ),
          ],
        ),
      ),
      key: _scaffoldKey,
    );
  }

  Future _signOut() async {
    await _auth.signOut();
  }
}

class MyHomePage extends StatefulWidget {
  Future<void> signOut() async {
    await Authentification().signOut();
  }

  final User user;
  const MyHomePage({Key key, this.user}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  FirebaseAuth _auth = FirebaseAuth.instance;
  List<Widget> pages = [
    HomePage(),
    SearchPage(),
    CreatePostPage(),
    NotificationsPage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      key: _scaffoldKey,
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        body: TabBarView(
          children: pages,
        ),
        bottomNavigationBar: Container(
          // decoration: BoxDecoration(
          //   boxShadow: [
          //     BoxShadow(
          //       offset: Offset(10, 10)
          //     )
          //   ]
          // ),
          margin: EdgeInsets.only(bottom: 20),
          child: new TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.search),
              ),
              Tab(
                icon: Icon(Icons.add),
              ),
              Tab(
                icon: Icon(Icons.favorite),
              ),
              Tab(
                icon: Icon(Icons.perm_identity),
              ),
            ],
            unselectedLabelColor: Colors.black,
            labelColor: Colors.blue,
            indicatorColor: Colors.transparent,
          ),
        ),
      ),
    );
  }

  Future _signOut() async {
    await _auth.signOut();
  }
}
