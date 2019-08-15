import 'package:flutter/material.dart';
import 'package:flutter_direct/flutter_direct.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.grey[850]),
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
        body: Padding(
          padding: const EdgeInsets.only(
            top: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: AtomicButton(
                  key: Key('primary-button'),
                  onTap: () {},
                  text: 'Primary Button',
                  buttonSize: ButtonSize.Large,
                  buttonColor: ButtonColor.Primary,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: AtomicTypography(
                  fontType: FontType.Title1,
                  color: AtomicColor.primaryColor,
                  fontWeight: FontWeight.w500,
                  data: 'Atomic Typography - Helvetica Neue',
                ),
              )
            ],
          ),
        ));
  }
}
