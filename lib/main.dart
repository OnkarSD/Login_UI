import 'package:basics/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:basics/NextPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/2': (context) => NextPage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Onkar',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginPage(),
    );
  }
}

