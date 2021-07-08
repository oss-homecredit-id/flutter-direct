part of flutter_direct;

enum CustomCardBg { Color, Image }

class AtomicCustomCard extends StatelessWidget {
  final double? marginLeft;
  final double? marginRight;
  final double? marginTop;
  final double? marginBottom;
  final Color? cardColor;
  final String? keyValue;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  final CustomCardBg? customCardBg;
  final String? image;
  final List<Widget>? listOfWidget;

  AtomicCustomCard(
      {this.marginLeft,
      this.marginRight,
      this.marginTop,
      this.marginBottom,
      this.cardColor,
      this.keyValue,
      this.mainAxisAlignment,
      this.crossAxisAlignment,
      this.listOfWidget,
      this.customCardBg,
      this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      key: Key(keyValue ?? ''),
      margin:
          EdgeInsets.only(left: marginLeft!, right: marginRight!, top: marginTop!),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      elevation: 2.0,
      color: customCardBg == CustomCardBg.Color ? cardColor : Colors.white,
      child: Container(
        padding: EdgeInsets.only(top: 18, bottom: 18, left: 15, right: 15),
        child: Stack(
          children: <Widget>[
            Column(
                mainAxisAlignment: mainAxisAlignment!,
                crossAxisAlignment: crossAxisAlignment!,
                children: listOfWidget!)
          ],
        ),
      ),
    );
  }

  getCardBg(CustomCardBg customCardBg) {
    switch (customCardBg) {
      case CustomCardBg.Color:
        return true;
        break;
      case CustomCardBg.Image:
        return true;
        break;
    }
  }
}
