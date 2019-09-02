import 'package:flutter/material.dart';

class AtomicCustomCard extends StatelessWidget {
  final double marginLeft;
  final double marginRight;
  final double marginTop;
  final double marginBottom;
  final Color cardColor;
  final String keyValue;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final List<Widget> listOfWidget;

  AtomicCustomCard(
      {this.marginLeft,
      this.marginRight,
      this.marginTop,
      this.marginBottom,
      this.cardColor,
      this.keyValue,
      this.mainAxisAlignment,
      this.crossAxisAlignment,
      this.listOfWidget});

  @override
  Widget build(BuildContext context) {
    return Card(
      key: Key(keyValue ?? ''),
      margin:
          EdgeInsets.only(left: marginLeft, right: marginRight, top: marginTop),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      elevation: 2.0,
      color: cardColor,
      child: Container(
        padding: EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 10),
        // decoration: BoxDecoration(
        //     gradient:
        //         LinearGradient(colors: PPHomeScreenV5.kitGradientsBagiKode)),
        child: Column(
            mainAxisAlignment: mainAxisAlignment,
            crossAxisAlignment: crossAxisAlignment,
            children: listOfWidget),
      ),
    );
  }
}
