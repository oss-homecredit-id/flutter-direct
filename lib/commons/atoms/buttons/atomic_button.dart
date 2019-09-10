part of flutter_direct;

enum ButtonColor { Primary, Secondary, Disable }
enum ButtonSize { Small, Default, Large }
enum ButtonType { Primary, Secondary, Disable }

class AtomicButton extends StatelessWidget {
  final String keyValue;
  final GestureTapCallback onTap;
  final String text;
  final Alignment alignment;
  final BorderRadius borderRadiusDefault = BorderRadius.circular(8);
  final double height;
  final ButtonSize buttonSize;
  final ButtonType buttonType;
  final Color textColor;

  AtomicButton(
      {this.keyValue,
      this.onTap,
      @required this.text,
      this.height,
      @required this.buttonType,
      this.alignment = Alignment.center,
      this.textColor,
      @required this.buttonSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key(keyValue ?? ''),
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
              color: getButtonTypeColor(buttonType),
              width: 2.0,
            ),
            color: getButtonTypeColor(buttonType),
            borderRadius: borderRadiusDefault,
            shape: BoxShape.rectangle,
          ),
          child: InkWell(
            onTap: getButtonType(buttonType) ? onTap : null,
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
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  getButtonTypeColor(ButtonType buttonType) {
    switch (buttonType) {
      case ButtonType.Primary:
        return AtomicColor.primaryColor;
        break;
      case ButtonType.Secondary:
        return AtomicColor.primaryColor;
        break;
      case ButtonType.Disable:
        return AtomicColor.disableColor;
        break;
      default:
    }
  }

  getButtonType(ButtonType buttonType) {
    switch (buttonType) {
      case ButtonType.Primary:
        return true;
        break;
      case ButtonType.Secondary:
        return true;
        break;
      case ButtonType.Disable:
        return false;
        break;
      default:
    }
  }
}
