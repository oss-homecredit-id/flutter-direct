part of flutter_direct;

enum FontType { Title1, Title2, Title3, Body1, Body2, TextButton, Caption }
enum FontFamily { Campton, Raleway }
enum FontBold { Bold, Regular, Medium }

class AtomicTypography extends StatelessWidget {
  final String keyValue;
  final FontType fontType;
  final FontFamily fontFamily;
  final Color color;
  final String data;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final bool ellipsisText;
  final double lineHeight;
  final int maxLines;

  AtomicTypography(
      {this.keyValue,
      this.fontType,
      this.fontFamily,
      this.color,
      this.data,
      this.textAlign,
      this.fontWeight,
      this.ellipsisText,
      this.lineHeight,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? 'no text',
      maxLines: maxLines,
      key: Key(keyValue ?? ''),
      overflow:
          ellipsisText == true ? TextOverflow.ellipsis : TextOverflow.clip,
      textAlign: textAlign ?? TextAlign.left,
      strutStyle: StrutStyle(
        height: lineHeight ?? 1.0,
      ),
      textScaleFactor: 1.0,
      style: TextStyle(
        fontFamily: getFontFamilyType(fontFamily),
        fontSize: fontType == FontType.Title1
            ? 21
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
                                : fontType == FontType.Caption ? 13 : 12,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }

  getFontFamilyType(FontFamily fontFamily) {
    switch (fontFamily) {
      case FontFamily.Campton:
        return DirectFontFamily.Campton;
        break;
      case FontFamily.Raleway:
        return DirectFontFamily.Raleway;
        break;

      default:
    }
  }
}
