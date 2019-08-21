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
                //keyValue: 'primary-button',
                onTap: () {},
                text: 'Primary Button',
                buttonSize: ButtonSize.Large,
                buttonType: ButtonType.Primary,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: AtomicButton(
                keyValue: 'secondary-button',
                onTap: () {},
                text: 'Secondary Button',
                buttonSize: ButtonSize.Large,
                buttonType: ButtonType.Secondary,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: AtomicButton(
                keyValue: 'disable-button',
                onTap: () {},
                text: 'Disable Button',
                buttonSize: ButtonSize.Large,
                buttonType: ButtonType.Disable,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
