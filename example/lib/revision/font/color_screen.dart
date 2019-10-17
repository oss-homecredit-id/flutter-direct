import 'package:example/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_direct/flutter_direct.dart';

class ColorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Color"),
      ),
      body: Container(
          color: BgColor,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                buildTileColor(
                    "Primary Color", DirectColor.primaryColor, Colors.white),
                SizedBox(
                  height: 10,
                ),
                buildTileColor(
                    "Disable Color", DirectColor.disableColor, Colors.white),
                SizedBox(
                  height: 10,
                ),
                buildTileColor("BG Color", DirectColor.bgColor, Colors.black),
              ],
            ),
          )),
    );
  }

  Widget buildTileColor(String text, Color color, Color colorText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(text),
        SizedBox(
          height: 10,
        ),
        Stack(
          children: <Widget>[
            Container(
              color: color,
              height: 40,
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  text,
                  style: TextStyle(color: colorText),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
