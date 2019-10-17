part of flutter_direct;

class DirectNudeButton extends StatelessWidget {
  final String keyValue;
  final GestureTapCallback onTap;
  final String text;
  final DirectButtonState buttonState;
  final double fontSize;
  final String fontFamily;
  final FontWeight fontWeight;
  final Color color;

  DirectNudeButton(
      {this.keyValue,
      this.onTap,
      this.text,
      this.buttonState,
      this.fontWeight,
      this.fontFamily,
      this.fontSize,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key(keyValue ?? ''),
      child: Material(
        color: Colors.transparent,
        child: Ink(
          child: InkWell(
            onTap: buttonState == DirectButtonState.Active ? onTap : null,
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
                          color: buttonState == DirectButtonState.Active
                              ? color
                              : DirectColor.disableColor,
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
