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

  static const TextStyle inboxReadStyle = TextStyle(
      fontFamily: DirectFont.PtSans,
      fontWeight: FontWeight.normal,
      fontSize: 13);

  static const TextStyle inboxUnreadStyle = TextStyle(
      fontFamily: DirectFont.PtSans, fontWeight: FontWeight.bold, fontSize: 13);

  static const TextStyle accountHeaderTextStyle = TextStyle(
      color: Color.fromARGB(255, 169, 169, 169),
      fontFamily: DirectFont.Campton,
      fontWeight: FontWeight.w500,
      fontSize: 14);

  static const TextStyle accountListTextStyle = TextStyle(
      color: Color.fromARGB(255, 64, 64, 64),
      fontFamily: DirectFont.Campton,
      fontWeight: FontWeight.w500,
      fontSize: 16);
}
