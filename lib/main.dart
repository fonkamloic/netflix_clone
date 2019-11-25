import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:netflix_clone/netflix_download.dart';
import 'package:netflix_clone/netflix_home.dart';
import 'package:netflix_clone/netflix_more.dart';
import 'package:netflix_clone/netflix_search.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}

Widget show(index) {
  switch (index) {
    case 0:
      return NetflixHome(index);
      break;
    case 1:
      return NetflixSearch();
      break;
    case 2:
      return NetflixDownload();
      break;
    case 3:
      return NetflixMore();
      break;
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: show(index),
      backgroundColor: Color(0xff221f1f),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (int x) {
          setState(() {
            index = x;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Color(0xff221f1f),
            title: Text(
              "Home",
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xff221f1f),
            icon: Icon(Icons.search),
            title: Text(
              "Search",
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xff221f1f),
            icon: Icon(Icons.file_download),
            title: Text(
              "Download",
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xff221f1f),
            icon: Icon(Icons.more_vert),
            title: Text(
              "More",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
