part of flutter_direct;

class AtomicFontGeneral extends StatelessWidget {
  final String data;
  final String keyValue;
  final TextStyle style;

  AtomicFontGeneral(
      {this.data, this.keyValue, this.style});

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
        style: style);
  }
}
