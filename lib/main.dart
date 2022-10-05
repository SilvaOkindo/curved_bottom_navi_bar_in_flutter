import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:curvy_nav_bar/pages/add.dart';
import 'package:curvy_nav_bar/pages/people.dart';
import 'package:curvy_nav_bar/pages/person.dart';
import 'package:curvy_nav_bar/pages/search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home()
    );
  }
}


class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  final items = const [
    Icon(Icons.people, size: 30),
    Icon(Icons.person, size: 30),
    Icon(Icons.add, size: 30),
    Icon(Icons.search_off_outlined, size: 30),
  ];
  
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("Curved Navigation Bar"),
        backgroundColor: Colors.blue[300],
        elevation: 0,
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        alignment: Alignment.center,
        child: getSelectedWidget(index: index),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        onTap: (selectedIndex){
          setState(() {
            index = selectedIndex;
          });
        },
        height: 70,
        color: Colors.white,
        animationDuration: const Duration(milliseconds: 300),
        ),
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = const People();
        break;
      case 1:
        widget = const Person();
        break;
      case 2:
        widget = const Add();
        break;
      case 3:
        widget = const Search();
        break;    
      default:
        widget = const People();
    }
    return widget;
  }
}