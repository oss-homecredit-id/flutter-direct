import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_direct/flutter_direct.dart';

class PPHomeScreenV6 extends StatefulWidget {
  @override
  _PPHomeScreenV6State createState() => _PPHomeScreenV6State();
}

class ProductModel {
  String image;
  String title;

  ProductModel({this.image, this.title});

  static final List<ProductModel> dummyData = [
    new ProductModel(image: 'assets/imgs/image.png', title: "DONA"),
    new ProductModel(image: 'assets/imgs/image.png', title: "FlexiFast"),
    new ProductModel(image: 'assets/imgs/image.png', title: "..."),
  ];
}

class _PPHomeScreenV6State extends State<PPHomeScreenV6> {
  final List items = [1, 2, 3, 4, 5];

  Widget cardKomisi() => AtomicCustomCard(
        marginLeft: 20.0,
        marginRight: 20.0,
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

  Widget header() => AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      title: AtomicTypography(
        fontFamily: FontFamily.Campton,
        fontType: FontType.Title1,
        color: Color(0xFFe11931),
        fontWeight: FontWeight.bold,
        data: 'TIPPERS.DEV',
      ));

  Widget name() => Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          children: <Widget>[
            Container(
                child: AtomicTypography(
              fontFamily: FontFamily.Campton,
              fontType: FontType.Title1,
              color: Colors.black,
              data: 'Halo, ',
            )),
            Container(
                child: AtomicTypography(
              keyValue: 'nama',
              fontFamily: FontFamily.Campton,
              fontType: FontType.Title1,
              color: Colors.black,
              data: 'Gordon!',
            )),
          ],
        ),
      );

  Widget bodyBuilder() => Scaffold(
        appBar: header(),
        body: Stack(
          children: <Widget>[
            Container(
              color: Colors.white,
            ),
            Positioned.fill(
              child: Image.asset(
                "assets/images/1xreferral.png",
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomLeft,
              ),
            ),
            Center(
              child: NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (overscroll) {
                  overscroll.disallowGlow();
                },
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      name(),
                      cardKomisi(),
                      carouselBanner(),
                      buildProductMenu()
                    ],
                  ),
                ),
              ),
            )
          ],
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
                keyValue: 'tippers_code',
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

  Widget carouselBanner() => Container(
        margin: EdgeInsets.only(top: 25),
        child: CarouselSlider(
          autoPlay: true,
          height: 100.0,
          items: items.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ));
              },
            );
          }).toList(),
        ),
      );

  Widget rowProduct(ProductModel productModel) => Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
            Widget>[
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
                borderRadius: new BorderRadius.all(new Radius.circular(6.0))),
            padding: EdgeInsets.all(12.0),
            child: Image.asset(
              'assets/images/image.png',
              height: 30,
              fit: BoxFit.fitHeight,
            ),
          )
        ]),
      );

  Widget buildProductMenu() => new Container(
      height: MediaQuery.of(context).size.height * 0.1,
      color: Colors.blue,
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 3,
          gridDelegate:
              new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, position) {
            return rowProduct(ProductModel.dummyData[position]);
          }));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: bodyBuilder(),
    );
  }
}
