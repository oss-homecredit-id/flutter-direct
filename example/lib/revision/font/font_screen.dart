import 'package:example/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_direct/flutter_direct.dart';

class FontScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Font"),
      ),
      body: Container(
          width: double.infinity,
          color: BgColor,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                DirectFontAppbar(
                  data: "APPBAR.FONT",
                ),
                SizedBox(
                  height: 10,
                ),
                DirectFont(
                  data: 'Font Family - Campton',
                  fontFamily: DirectFontFamily.Campton,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                DirectFont(
                  data: 'Font Family - Pt Sans',
                  fontFamily: DirectFontFamily.PtSans,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                DirectFont(
                  data: 'Font Family - Helvetica',
                  fontFamily: DirectFontFamily.Helvetica,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                DirectFont(
                  data: 'Font Family - Raleway',
                  fontFamily: DirectFontFamily.Raleway,
                  color: Colors.white,
                )
              ],
            ),
          )),
    );
  }
}
