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
                DirectText(
                  data: 'Filled Button',
                  textStyle: TextStyle(
                    fontFamily: DirectFont.PtSans,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                DirectFilledButton(
                  text: "Active Button",
                  fontSize: 16,
                  buttonState: DirectButtonState.Active,
                  fontFamily: DirectFont.PtSans,
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
                  fontFamily: DirectFont.PtSans,
                  fontWeight: FontWeight.normal,
                  onTap: () {},
                ),
                SizedBox(
                  height: 20,
                ),
                DirectFilledButton(
                  text: "Tapable Button",
                  buttonState: DirectButtonState.Tapable,
                  color: DirectColor.disableColor,
                  fontSize: 16,
                  fontFamily: DirectFont.PtSans,
                  fontWeight: FontWeight.normal,
                  onTap: () {},
                ),
                SizedBox(
                  height: 10,
                ),
                DirectText(
                  data: 'Nude Button',
                  textStyle: TextStyle(
                    fontFamily: DirectFont.PtSans,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                DirectNudeButton(
                  text: 'Active Button',
                  buttonState: DirectButtonState.Active,
                  fontFamily: DirectFont.PtSans,
                  color: DirectColor.primaryColor,
                  onTap: () {},
                ),
                SizedBox(
                  height: 10,
                ),
                DirectNudeButton(
                  text: 'Disabled Button',
                  buttonState: DirectButtonState.Disabled,
                  fontFamily: DirectFont.PtSans,
                  color: DirectColor.primaryColor,
                  onTap: () {},
                ),
                cardSantai()
              ],
            ),
          )),
    );
  }

  Widget cardSantai() => GestureDetector(
        onTap: () {},
        child: AtomicCustomCard(
          marginLeft: 0,
          marginRight: 0,
          marginTop: 0,
          keyValue: 'custom_card',
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          listOfWidget: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.0),
                    width: double.infinity,
                    height: 100,
                    color: Colors.grey,
                    child: Center(
                      child: Text(
                        'Image',
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Icon(Icons.arrow_forward_ios, color: Colors.black),
                )
              ],
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5.0),
              child: DirectText(
                data:
                    'Ayo, bagikan kode kamu ke teman, keluarga, dan kenalanmu! Dapatin Rp15.000 tiap kontrak mereka yang di terima',
                textStyle: DirectTextStyle.productTextStyle,
              ),
            ),
          ],
        ),
      );
}
