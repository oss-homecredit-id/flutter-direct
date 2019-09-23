part of flutter_direct;

class AtomicFontAppbar extends StatelessWidget {
  final String data;
  final String keyValue;
  final double size;
  final Color color;
  final FontWeight fontWeight;
  final FontFamily fontFamily;

  AtomicFontAppbar({
    this.data,
    this.keyValue,
    this.size,
    this.color,
    this.fontWeight,
    this.fontFamily
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? 'null',
      key: Key(keyValue ?? ''),
      overflow:
         TextOverflow.ellipsis,
      textAlign: TextAlign.left,
      strutStyle: StrutStyle(
        height:  1.0,
      ),
      textScaleFactor: 1.0,
      style: TextStyle(
        fontFamily: fontFamily ?? AtomicFont.Campton,
        fontSize: size ?? 22,
        color: color ?? AtomicColor.primaryColor,
        fontWeight: fontWeight ?? FontWeight.bold,
      ),
    );
  }


}
