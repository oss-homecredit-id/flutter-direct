import 'package:flutter/material.dart';
import 'package:flutter_direct/flutter_direct.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Direct Demo"),
      ),
      body: Container(
        child: Center(
          child: TippersButton(
            onTap: () {},
            text: 'Click',
            height: 80,
            buttonColor: ButtonColor.Primary,
            textColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
