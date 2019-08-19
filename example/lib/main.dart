import 'package:example/component_list/button_component.dart';
import 'package:example/component_list/color_component.dart';
import 'package:example/component_list/typography_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_direct/flutter_direct.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/button': (context) => ButtonComponent(),
        '/typography': (context) => TypographyComponent(),
        '/color': (context) => ColorComponent(),
      },
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
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: Text("Typography Component"),
                    onTap: () {
                      Navigator.pushNamed(context, '/typography');
                    },
                  ),
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: Text("Color Component"),
                    onTap: () {
                      Navigator.pushNamed(context, '/color');
                    },
                  ),
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: Text("Button Component"),
                    onTap: () {
                      Navigator.pushNamed(context, '/button');
                    },
                  ),
                ],
              ),
            )));
  }
}
