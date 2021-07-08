part of flutter_direct;

enum CustomCardBgv2 { Color, Image }

class AtomicCustomCardV2 extends StatelessWidget {
  final double? marginLeft;
  final double? marginRight;
  final double? marginTop;
  final double? marginBottom;
  final Color? cardColor;
  final String? keyValue;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  final CustomCardBgv2? customCardBg;
  final String? image;
  final List<Widget>? listOfWidget;

  AtomicCustomCardV2(
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
    return Container(
      key: Key(keyValue ?? ''),
      margin:
          EdgeInsets.only(left: marginLeft!, right: marginRight!, top: marginTop!),
      decoration: BoxDecoration(
          color: customCardBg == CustomCardBg.Color ? cardColor : Colors.white,
          border: Border.all(color: Colors.transparent, width: 1.0),
          boxShadow: [
            new BoxShadow(
              color: Colors.grey,
              offset: new Offset(1.0, 3.0),
              blurRadius: 1.0,
            )
          ],
          borderRadius: new BorderRadius.all(new Radius.circular(8.0))),
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
