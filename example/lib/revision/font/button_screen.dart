import 'package:flutter/material.dart';
import 'package:example/main.dart';
import 'package:flutter_direct/flutter_direct.dart';

class ButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button"),
      ),
      body: Container(
          color: BgColor,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                DirectFont(
                  data: 'Filled Button',
                  fontFamily: DirectFontFamily.PtSans,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                DirectFilledButton(
                  text: "Active Button",
                  fontSize: 16,
                  buttonState: DirectButtonState.Active,
                  fontFamily: DirectFontFamily.PtSans,
                  fontWeight: FontWeight.normal,
                  onTap: () {},
                ),
                SizedBox(
                  height: 20,
                ),
                DirectFilledButton(
                  text: "Disabled Button",
                  buttonState: DirectButtonState.Disabled,
                  fontSize: 16,
                  fontFamily: DirectFontFamily.PtSans,
                  fontWeight: FontWeight.normal,
                  onTap: () {},
                ),
                SizedBox(
                  height: 10,
                ),
                DirectFont(
                  data: 'Nude Button',
                  fontFamily: DirectFontFamily.PtSans,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                DirectNudeButton(
                  text: 'Active Button',
                  buttonState: DirectButtonState.Active,
                  fontFamily: DirectFontFamily.PtSans,
                  color: DirectColor.primaryColor,
                  onTap: () {},
                ),
                SizedBox(
                  height: 10,
                ),
                DirectNudeButton(
                  text: 'Disabled Button',
                  buttonState: DirectButtonState.Disabled,
                  fontFamily: DirectFontFamily.PtSans,
                  color: DirectColor.primaryColor,
                  onTap: () {},
                ),
              ],
            ),
          )),
    );
  }
}
