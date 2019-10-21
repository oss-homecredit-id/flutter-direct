part of flutter_direct;

class DirectText extends StatelessWidget {
  final String data;
  final String keyValue;
  final Color color;
  final String fontFamily;
  final double size;
  final FontWeight fontWeight;

  DirectText(
      {this.data,
      this.keyValue,
      this.color,
      this.fontFamily,
      this.fontWeight,
      this.size});

  @override
  Widget build(BuildContext context) {
    return Text(data ?? 'null',
        key: Key(keyValue ?? ''),
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.left,
        strutStyle: StrutStyle(
          height: 1.0,
        ),
        textScaleFactor: 1.0,
        style: TextStyle(
          color: color ?? Colors.black,
          fontFamily: fontFamily,
          fontSize: size ?? 16,
          fontWeight: fontWeight ?? FontWeight.normal,
        ));
  }
}
