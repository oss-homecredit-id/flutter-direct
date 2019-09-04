import 'package:flutter/material.dart';
import 'package:flutter_direct/flutter_direct.dart';

class ColorComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Atomic Color"),
      ),
      body: Container(
          child: Padding(
        padding: const EdgeInsets.only(
          top: 16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 80,
              width: double.infinity,
              color: AtomicColor.primaryColor,
              child: Center(
                  child: Text(
                "Primary Color",
                style: TextStyle(color: Colors.white),
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              width: double.infinity,
              color: AtomicColor.secondaryColor,
              child: Center(
                  child: Text(
                "Secondary Color",
                style: TextStyle(color: Colors.white),
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              width: double.infinity,
              color: AtomicColor.disableColor,
              child: Center(
                  child: Text(
                    "Disable Color",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      )),
    );
  }
}
