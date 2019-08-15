part of flutter_direct;

enum FontType { Title1, Title2, Title3, Body1, Body2, TextButton, Caption }

class AtomicTypography extends StatelessWidget {
  final FontType fontType;
  final Color color;
  final String data;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final bool ellipsisText;
  final double lineHeight;

  AtomicTypography({
    this.fontType,
    this.color,
    this.data,
    this.textAlign,
    this.fontWeight,
    this.ellipsisText,
    this.lineHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? 'no text',
      overflow:
          ellipsisText == true ? TextOverflow.ellipsis : TextOverflow.clip,
      textAlign: textAlign ?? TextAlign.left,
      strutStyle: StrutStyle(
        height: lineHeight ?? 1.0,
      ),
      textScaleFactor: 1.0,
      style: TextStyle(
        fontFamily: AtomicFont.helveticaFont,
        fontSize: fontType == FontType.Title1
            ? 22
            : fontType == FontType.Title2
                ? 20
                : fontType == FontType.Title3
                    ? 17
                    : fontType == FontType.Body1
                        ? 15
                        : fontType == FontType.Body2
                            ? 14
                            : fontType == FontType.TextButton
                                ? 16
                                : fontType == FontType.Caption ? 12 : 12,
        color: color,
        fontWeight: fontType == FontType.Title1
            ? FontWeight.w600
            : fontType == FontType.Title2
                ? FontWeight.w500
                : fontType == FontType.Title3
                    ? FontWeight.w500
                    : fontType == FontType.TextButton
                        ? FontWeight.bold
                        : fontWeight,
      ),
    );
  }
}
