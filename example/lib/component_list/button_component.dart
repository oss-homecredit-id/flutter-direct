import 'package:flutter/material.dart';
import 'package:flutter_direct/flutter_direct.dart';

class ButtonComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Atomic Button"),
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
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: AtomicButton(
                key: Key('primary-button'),
                onTap: () {},
                text: 'Primary Button',
                buttonSize: ButtonSize.Large,
                buttonColor: ButtonColor.Primary,
                buttonType: ButtonType.Normal,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: AtomicButton(
                key: Key('secondary-button'),
                onTap: () {},
                text: 'Secondary Button',
                buttonSize: ButtonSize.Large,
                buttonColor: ButtonColor.Secondary,
                buttonType: ButtonType.Normal,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: AtomicButton(
                key: Key('secondary-button'),
                onTap: () {},
                text: 'Disable Button',
                buttonSize: ButtonSize.Large,
                buttonColor: ButtonColor.Disable,
                buttonType: ButtonType.Disable,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
