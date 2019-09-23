import 'package:flutter/material.dart';
import 'package:flutter_direct/flutter_direct.dart';

class FontScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Atomic Typography"),
      ),
      body: Container(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AtomicFontAppbar(
              data: "APPBAR.FONT",
            ),
          ],
        ),
      )),
    );
  }
}
