part of flutter_direct;

enum ButtonColor { Primary, Secondary }

class TippersButton extends StatelessWidget {
  
  final GestureTapCallback onTap;
  final String text;
  final BorderRadius borderRadiusDefault = BorderRadius.circular(24.5);
  final double height;
  final ButtonColor buttonColor;
  final Color textColor;

  TippersButton({this.onTap, this.text, this.height, this.buttonColor, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        borderRadius: borderRadiusDefault,
        child: Ink(
          height: height,
          decoration: BoxDecoration(
            border: Border.all(
              color: getButtonTypeColor(buttonColor),
              width: 2.0,
            ),
            color: getButtonTypeColor(buttonColor),
            borderRadius: borderRadiusDefault,
            shape: BoxShape.rectangle,
          ),
          child: InkWell(
            onTap: onTap,
            borderRadius: borderRadiusDefault,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text(text, style: TextStyle(color: textColor),)],
            ),
          ),
        ),
      ),
    );
  }

  getButtonTypeColor(ButtonColor buttonColor) {
    switch (buttonColor) {
      case ButtonColor.Primary:
        return TippersColors.primaryColor;
        break;
      case ButtonColor.Secondary:
        return TippersColors.secondaryColor;
        break;
      default:
    }
  }
}
