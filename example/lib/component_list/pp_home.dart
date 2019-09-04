import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
  final List<String> name = [
    'John Doe',
    'Jane Doe',
    'Mia Goth',
    'Ramses',
    'Paul Vik',
    'Thomas',
    'Johnny'
  ];

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
        margin: EdgeInsets.only(top: 15.0, bottom: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Promosi',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'Campton')),
            Text('Lihat Semua',
                style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontFamily: 'PT Sans')),
          ],
        ),
      );

  Widget titleStories() => Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        margin: EdgeInsets.only(top: 15.0, bottom: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Stories',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'Campton')),
            Text('Lihat Semua',
                style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontFamily: 'PT Sans')),
          ],
        ),
      );

  Widget content() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          header(),
          cardKomisi(),
          titleProduk(),
          buildProductMenu(),
          divider(),
          titlePromosi(),
          carouselBanner()
        ],
      );

  Widget header() => Container(
        margin: EdgeInsets.only(bottom: 20),
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
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text('Selamat Siang,',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                              color: Colors.white,
                              fontFamily: 'Campton')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text('Gordon Gecko,',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              color: Colors.white,
                              fontFamily: 'Campton')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 3.0),
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
      );

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
              'assets/imgs/image.png',
              height: 30,
              fit: BoxFit.fitHeight,
            ),
          ),
          new Padding(
            padding: EdgeInsets.only(top: 6.0),
          ),
          Flexible(
              child: new Text(productModel.title,
                  style: new TextStyle(fontSize: 10.0)))
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

  Widget carouselBanner() => Container(
        margin: EdgeInsets.only(top: 10),
        child: CarouselSlider(
          autoPlay: true,
          height: 100.0,
          items: [1, 2, 3, 4, 5].map((i) {
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

  Widget buildStories() => AspectRatio(
      aspectRatio: 16 / 7.5,
      child: new Container(
        margin: EdgeInsets.only(left: 6.0, top: 10.0),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: name.length,
            itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.25,
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.19,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      child: Center(
                          child: Text(
                        name[index],
                        style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.black,
                            fontFamily: 'PT Sans'),
                      )),
                    ),
                  ],
                ),
              );
            }),
      ));

  Widget bodyBuilder() => SingleChildScrollView(
          child: Stack(children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.33,
          width: double.infinity,
          child: Container(
            decoration: BoxDecoration(
              gradient: new LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: PPHomeScreen.kitGradientsHeader,
              ),
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.08, bottom: 25),
            child: Column(
              children: <Widget>[
                Stack(children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        header(),
                        cardKomisi(),
                        titleProduk(),
                        buildProductMenu(),
                        divider(),
                        titlePromosi(),
                        carouselBanner(),
                        titleStories(),
                        buildStories()
                      ],
                    ),
                  )
                ])
              ],
            ))
      ]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white, body: bodyBuilder());
  }

  goToPage(int number) {
    print(number);
  }
}
