part of flutter_direct;

class DirectFilledButton extends StatelessWidget {
  final String keyValue;
  final GestureTapCallback onTap;
  final String text;
  final BorderRadius borderRadiusDefault = BorderRadius.circular(8);
  final double fontSize;
  final String fontFamily;
  final FontWeight fontWeight;
  final DirectButtonState buttonState;
  final Color color;

  DirectFilledButton(
      {this.keyValue,
      this.onTap,
      @required this.text,
      this.fontSize,
      this.fontFamily,
      this.fontWeight,
      this.buttonState,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key(keyValue ?? ''),
      child: Material(
        borderRadius: borderRadiusDefault,
        child: Ink(
          decoration: BoxDecoration(
            color: buttonState == DirectButtonState.Active
                ? DirectColor.primaryColor
                : buttonState == DirectButtonState.Tapable
                    ? color
                    : DirectColor.disableColor,
            borderRadius: borderRadiusDefault,
            shape: BoxShape.rectangle,
          ),
          child: InkWell(
            onTap: buttonState == DirectButtonState.Active ||
                    buttonState == DirectButtonState.Tapable
                ? onTap
                : null,
            borderRadius: borderRadiusDefault,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    child: Text(
                      text,
                      style: TextStyle(
                          fontFamily: fontFamily,
                          color: Colors.white,
                          fontSize: fontSize,
                          fontWeight: fontWeight),
                      overflow: TextOverflow.ellipsis,
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
}
