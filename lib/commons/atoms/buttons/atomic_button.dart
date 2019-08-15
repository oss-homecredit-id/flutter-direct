part of flutter_direct;

enum ButtonColor { Primary, Secondary }
enum ButtonSize { Small, Default, Large }

class AtomicButton extends StatelessWidget {
  final Key key;
  final GestureTapCallback onTap;
  final String text;
  final Alignment alignment;
  final BorderRadius borderRadiusDefault = BorderRadius.circular(8);
  final double height;
  final ButtonColor buttonColor;
  final ButtonSize buttonSize;
  final Color textColor;

  AtomicButton(
      {this.key,
      this.onTap,
      @required this.text,
      this.height,
      this.alignment = Alignment.center,
      @required this.buttonColor,
      this.textColor,
      @required this.buttonSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      child: Material(
        borderRadius: borderRadiusDefault,
        child: Ink(
          height: buttonSize == ButtonSize.Small
              ? 20
              : buttonSize == ButtonSize.Default
                  ? 40
                  : buttonSize == ButtonSize.Large ? 52 : 40,
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
            child: Container(
              alignment: alignment,
              padding: EdgeInsets.symmetric(
                vertical: buttonSize == ButtonSize.Small ? 0 : 4,
                horizontal: buttonSize == ButtonSize.Small ? 14 : 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    text,
                    style: TextStyle(
                      color: textColor ?? Colors.white,
                      fontSize: buttonSize == ButtonSize.Small ? 14 : 16,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  getButtonTypeColor(ButtonColor buttonColor) {
    switch (buttonColor) {
      case ButtonColor.Primary:
        return AtomicColor.primaryColor;
        break;
      case ButtonColor.Secondary:
        return AtomicColor.secondaryColor;
        break;
      default:
    }
  }
}
