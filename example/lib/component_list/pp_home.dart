import 'package:flutter/material.dart';
import 'package:flutter_direct/flutter_direct.dart';

import 'arc_clipper.dart';

class PPHomeScreen extends StatefulWidget {
  static const blueSky = const Color(0xFF019CE0);
  static const blueClouds = const Color(0xFF00B9F2);

  static List<Color> kitGradientsHeader = [
    blueSky,
    blueClouds,
  ];

  @override
  _PPHomeScreenState createState() => _PPHomeScreenState();
}

class _PPHomeScreenState extends State<PPHomeScreen> {
  Widget appBackround() => Column(
        children: <Widget>[
          new Flexible(
            flex: 2,
            child: ClipPath(
              clipper: new ArcClipper(),
              child: Stack(
                children: <Widget>[
                  new Container(
                    decoration: new BoxDecoration(
                      gradient: new LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerLeft,
                          colors: PPHomeScreen.kitGradientsHeader),
                    ),
                  ),
                  new Container(width: double.infinity, child: new Container())
                ],
              ),
            ),
          ),
          new Flexible(
            flex: 4,
            child: new Container(),
          )
        ],
      );

  Widget titleProduct() => Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        margin: EdgeInsets.only(top: 15.0),
        child: Text('Product HOME CREDIT',
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Campton')),
      );

  Widget content() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          header(),
          cardKomisi(),
          titleProduct(),
          cardProduct()
        ],
      );

  Widget header() => SafeArea(
          child: Container(
        padding: EdgeInsets.only(top: 15.0),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: (MediaQuery.of(context).size.width / 3) * 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text('Selamat Siang,',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                              color: Colors.white,
                              fontFamily: 'Campton')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text('Gordon Gecko,',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              color: Colors.white,
                              fontFamily: 'Campton')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 7.0),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text('Kode Tippers Kamu FQGH09',
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                                fontFamily: 'Campton')),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  color: const Color(0xFFFF0000),
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              )
            ],
          ),
        ),
      ));

  Widget cardKomisi() => Container(
        height: MediaQuery.of(context).size.height * 0.18,
        margin: EdgeInsets.only(left: 20.0, right: 20.0),
        decoration: BoxDecoration(
            boxShadow: [
              new BoxShadow(
                color: Colors.grey,
                offset: new Offset(1.0, 3.0),
                blurRadius: 3.0,
              )
            ],
            border: Border.all(color: Colors.transparent, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Komisi Bulan Ini',
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Campton')),
                  Text('Rp. 480.000',
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Campton'))
                ],
              ),
            )
          ],
        ),
      );

  Widget cardProduct() => AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          color: Colors.red,
          margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
          //height: MediaQuery.of(context).size.height * 0.35,
          width: double.infinity,
          child: GridView.count(
            padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
            mainAxisSpacing: MediaQuery.of(context).size.height * 0.06,
            crossAxisSpacing: 15.0,
            crossAxisCount: 4,
            childAspectRatio: 1.0,
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              squareProduct(),
              squareProduct(),
              squareProduct(),
              squareProduct(),
              squareProduct(),
              squareProduct(),
              squareProduct(),
              squareProduct(),
            ],
          ),
        ),
      );

  Widget squareProduct() => Container(
    child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.transparent, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  new BoxShadow(
                      color: Colors.grey,
                      offset: new Offset(1.0, 3.0),
                      blurRadius: 3.0)
                ],
              ),
              child: Image.asset(
                'assets/imgs/image.png',
                height: 30,
                fit: BoxFit.fitHeight,
              ),
            ),
            Text('DONA')
          ],
        ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[appBackround(), content()],
      ),
    );
  }
}
