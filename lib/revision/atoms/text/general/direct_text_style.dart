part of flutter_direct;

class DirectTextStyle {
  static const TextStyle defaultStyle = TextStyle(
      fontSize: 16.0,
      fontFamily: DirectFont.Campton,
      color: Colors.black,
      fontWeight: FontWeight.normal);

  static const TextStyle productTextStyle = TextStyle(
      fontSize: 16.0, fontFamily: DirectFont.Campton, color: Colors.black);

  static const TextStyle titleTextStyle = TextStyle(
      fontSize: 21.0,
      fontFamily: DirectFont.Campton,
      color: Colors.black,
      fontWeight: FontWeight.bold);

  static const TextStyle inboxReadTitleStyle = TextStyle(
      fontFamily: DirectFont.PtSans,
      fontWeight: FontWeight.normal,
      fontSize: 13);

  static const TextStyle inboxUnreadTitleStyle = TextStyle(
      fontFamily: DirectFont.PtSans, fontWeight: FontWeight.bold, fontSize: 13);
}
