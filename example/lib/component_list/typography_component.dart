import 'package:flutter/material.dart';
import 'package:flutter_direct/flutter_direct.dart';

class TypographyComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Atomic Typography"),
      ),
      body: Container(
          child: Padding(
        padding: const EdgeInsets.only(
          top: 16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 24,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: AtomicTypography(
                fontType: FontType.Body1,
                fontFamily: FontFamily.Campton,
                color: DirectColor.primaryColor,
                fontWeight: FontWeight.w500,
                data: 'Campton - Body 1',
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: AtomicTypography(
                fontFamily: FontFamily.Raleway,
                fontType: FontType.Caption,
                color: DirectColor.primaryColor,
                fontWeight: FontWeight.w500,
                data: 'Raleway - Caption',
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: DirectTextAppbar(
                data: "Pesan",
                size: 22,
                fontWeight: FontWeight.bold,
                color: DirectColor.primaryColor,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
