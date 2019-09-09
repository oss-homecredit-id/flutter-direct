part of flutter_direct;

class AtomicFontAppbar extends StatelessWidget {
  final String data;
  final String keyValue;
  final double size;
  final Color color;
  final FontWeight fontWeight;

  AtomicFontAppbar({
    this.data,
    this.keyValue,
    this.size,
    this.color,
    this.fontWeight
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
        fontFamily: "Campton",
        fontSize: size ?? 18,
        color: color ?? Colors.green,
        fontWeight: fontWeight,
      ),
    );
  }


}
