import 'package:flutter/material.dart';

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

class ProductModel {
  String image;
  String title;

  ProductModel({this.image, this.title});

  static final List<ProductModel> dummyData = [
    new ProductModel(image: 'assets/imgs/image.png', title: "DONA"),
    new ProductModel(image: 'assets/imgs/image.png', title: "FlexiFast"),
    new ProductModel(image: 'assets/imgs/image.png', title: "Kartu Kredit"),
    new ProductModel(image: 'assets/imgs/image.png', title: "MOTOCOVER"),
    new ProductModel(image: 'assets/imgs/image.png', title: "AMAN"),
    new ProductModel(image: 'assets/imgs/image.png', title: "TEC PROTECT"),
    new ProductModel(image: 'assets/imgs/image.png', title: "SANTAI"),
    new ProductModel(image: 'assets/imgs/image.png', title: "Semua Produk"),
    new ProductModel(image: 'assets/imgs/image.png', title: "Sample 1"),
    new ProductModel(image: 'assets/imgs/image.png', title: "Sample 2"),
    new ProductModel(image: 'assets/imgs/image.png', title: "Sample 3"),
    new ProductModel(image: 'assets/imgs/image.png', title: "Sample 4")
  ];
}

class _PPHomeScreenState extends State<PPHomeScreen> {
  static const lightGrey = const Color(0xFFECECEC);

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

  Widget titleProduk() => Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        margin: EdgeInsets.only(top: 15.0),
        child: Text('Produk HOME CREDIT',
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Campton')),
      );

  Widget titlePromosi() => Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        margin: EdgeInsets.only(top: 15.0),
        child: Text('Promosi',
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
          titleProduk(),
          buildProductMenu(),
          divider(),
          titlePromosi()
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

  Widget divider() => new SizedBox(
        height: 20.0,
        child: new Center(
          child: new Container(
            margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
            height: 10.0,
            color: lightGrey,
          ),
        ),
      );

  Widget rowProduct(ProductModel productModel) => Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                decoration: new BoxDecoration(
                  color: Colors.white,
                    border: Border.all(color: Colors.transparent, width: 1.0),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.grey,
                        offset: new Offset(1.0, 3.0),
                        blurRadius: 1.0,
                      )
                    ],
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(10.0))),
                padding: EdgeInsets.all(12.0),
                child: Image.asset(
                  'assets/imgs/image.png',
                  height: 30,
                  fit: BoxFit.fitHeight,
                ),
              ),
              new Padding(
                padding: EdgeInsets.only(top: 6.0),
              ),
              Flexible(child: new Text(productModel.title, style: new TextStyle(fontSize: 10.0)))
            ]),
      );

  Widget buildProductMenu() => AspectRatio(
        aspectRatio: 16 / 8,
        child: new Container(
            margin: EdgeInsets.only(left: 30.0, right: 30.0),
            child: GridView.builder(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                physics: NeverScrollableScrollPhysics(),
                itemCount: 8,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, position) {
                  return rowProduct(ProductModel.dummyData[position]);
                })),
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

  goToPage(int number) {
    print(number);
  }
}
