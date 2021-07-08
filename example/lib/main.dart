import 'package:example/component_list/color_component.dart';
import 'package:example/component_list/grid_component.dart';
import 'package:example/component_list/image_component.dart';
import 'package:example/component_list/input_component.dart';
import 'package:example/component_list/listtile_component.dart';
import 'package:example/component_list/pp_home.dart';
import 'package:example/component_list/pp_homev5.dart';
import 'package:example/component_list/pp_homev6.dart';
import 'package:example/component_list/pp_inbox.dart';
import 'package:example/component_list/typography_component.dart';
import 'package:example/revision/font/button_screen.dart';
import 'package:example/revision/font/color_screen.dart';
import 'package:example/revision/font/font_screen.dart';
import 'package:flutter/material.dart';

const AppBarColor = const Color(0xFF1F2430);
const BgColor = const Color(0xFF2A3950);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/button': (context) => ButtonScreen(),
        '/typography': (context) => TypographyComponent(),
        '/color': (context) => ColorComponent(),
        '/input': (context) => InputComponent(),
        '/listtile': (context) => ListitleComponent(),
        '/homepp': (context) => PPHomeScreen(),
        // '/homeppv5': (context) => PPHomeScreenV5(),
        // '/homeppv6': (context) => PPHomeScreenV6(),
        '/inboxpp': (context) => PPInboxScreen(),
        '/image': (context) => ImageComponent(),
        '/grid': (context) => GridComponent(),
        '/color': (context) => ColorScreen(),
        '/font': (context) => FontScreen(),
      },
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: AppBarColor,
        ),
        primaryTextTheme: Typography(platform: TargetPlatform.iOS).white,
        textTheme: Typography(platform: TargetPlatform.iOS).white,
      ),
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
            child: Container(
              color: BgColor,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text("Font Component"),
                      onTap: () {
                        Navigator.pushNamed(context, '/font');
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
                    ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text("Input Component"),
                      onTap: () {
                        Navigator.pushNamed(context, '/input');
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text("List Tile Component"),
                      onTap: () {
                        Navigator.pushNamed(context, '/listtile');
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text("Home Partner Portal"),
                      onTap: () {
                        Navigator.pushNamed(context, '/homepp');
                      },
                    ),
                    // ListTile(
                    //   trailing: Icon(Icons.arrow_forward_ios),
                    //   title: Text("Home Partner Portal V5"),
                    //   onTap: () {
                    //     Navigator.pushNamed(context, '/homeppv5');
                    //   },
                    // ),
                    // ListTile(
                    //   trailing: Icon(Icons.arrow_forward_ios),
                    //   title: Text("Home Partner Portal V6"),
                    //   onTap: () {
                    //     Navigator.pushNamed(context, '/homeppv6');
                    //   },
                    // ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text("Inbox Partner Portal"),
                      onTap: () {
                        Navigator.pushNamed(context, '/inboxpp');
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text("Image Component"),
                      onTap: () {
                        Navigator.pushNamed(context, '/image');
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text("Grid Component"),
                      onTap: () {
                        Navigator.pushNamed(context, '/grid');
                      },
                    )
                  ],
                ),
              ),
            )));
  }
}
