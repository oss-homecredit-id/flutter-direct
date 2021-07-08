import 'package:flutter/material.dart';
import 'package:flutter_direct/flutter_direct.dart';

class PPHomeScreenV6 extends StatefulWidget {
  @override
  _PPHomeScreenV6State createState() => _PPHomeScreenV6State();
}

class _PPHomeScreenV6State extends State<PPHomeScreenV6> {
  Widget cardKomisi() => AtomicCustomCard(
        marginLeft: 0.0,
        marginRight: 0.0,
        marginTop: 20.0,
        cardColor: Colors.yellow.shade700,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        keyValue: 'custom_card',
        customCardBg: CustomCardBg.Color,
        image: 'assets/imgs/komisi-bg.png',
        listOfWidget: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              AtomicTypography(
                fontFamily: FontFamily.Campton,
                fontType: FontType.Caption,
                color: Colors.black,
                data: 'Lihat Komisi Anda Bulan Ini',
              ),
              Icon(Icons.keyboard_arrow_right)
            ],
          )
        ],
      );

  Widget header() => Container(
      child: Container(
          width: MediaQuery.of(context).size.width / 2,
          child: AtomicTypography(
            fontFamily: FontFamily.Campton,
            fontType: FontType.Title2,
            color: Color(0xFFe11931),
            fontWeight: FontWeight.w900,
            data: 'TIPPERS.DEV',
          )));

  Widget name() => Row(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.04),
              child: AtomicTypography(
                fontFamily: FontFamily.Campton,
                fontType: FontType.Title1,
                color: Colors.black,
                data: 'Halo, ',
              )),
          Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.04),
              child: AtomicTypography(
                fontFamily: FontFamily.Campton,
                fontType: FontType.Title1,
                color: Colors.black,
                data: 'Gordon!',
              )),
        ],
      );

  Widget bodyBuilder() => SafeArea(
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overscroll) {
            overscroll.disallowGlow();
          } as bool Function(OverscrollIndicatorNotification)?,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                header(),
                name(),
                cardKomisi(),
                welcomeMessage(),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      );

  Widget welcomeMessage() => AtomicCustomCard(
        marginLeft: 0.0,
        marginRight: 0.0,
        marginTop: 20.0,
        cardColor: Colors.white,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        keyValue: 'custom_card',
        customCardBg: CustomCardBg.Color,
        listOfWidget: <Widget>[
          Column(
            children: <Widget>[
              AtomicTypography(
                fontFamily: FontFamily.Campton,
                fontType: FontType.Title2,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                data: 'Kode Tippers Anda:',
              ),
              SizedBox(height: 5),
              AtomicTypography(
                fontFamily: FontFamily.Campton,
                fontType: FontType.Title2,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                data: 'TP19042601095',
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Image.asset('assets/imgs/welcome.png'),
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: bodyBuilder(),
    );
  }
}
