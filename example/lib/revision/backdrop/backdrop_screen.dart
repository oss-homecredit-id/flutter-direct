import 'package:flutter/material.dart';
import 'package:flutter_direct/flutter_direct.dart';

class BackdropScreen extends StatefulWidget {
  @override
  _BackdropScreenState createState() => _BackdropScreenState();
}

class _BackdropScreenState extends State<BackdropScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AtomicFontAppbar(
          data: "DONA",
        ),
        actions: <Widget>[
          Center(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: AtomicFontGeneral(
                data: "Bagikan",
                style: TextStyle(
                    fontFamily: AtomicFont.Campton,
                    fontSize: 12,
                    color: AtomicColor.primaryColor,
                    fontWeight: FontWeight.w400)),
          ))
        ],
      ),
      body: AtomicBackdrop(
        backdropTitle: "Cara Ajukan DONA",
        backPanel: Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 7),
          child: Column(
            children: <Widget>[
              AtomicFontGeneral(
                  data: "Dapatkan Pembiayaan Hingga Rp.25 Juta,",
                  style: TextStyle(
                      fontFamily: AtomicFont.Campton,
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
              AtomicFontGeneral(
                  data: "Dengan Jangka Waktu Cicilan",
                  style: TextStyle(
                      fontFamily: AtomicFont.Campton,
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
              AtomicFontGeneral(
                  data: "Selama 12 sampai 36 Bulan",
                  style: TextStyle(
                      fontFamily: AtomicFont.Campton,
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: Container(
                    height: 150,
                    width: 150,
                    child: Image.asset("assets/images/qr-code.png"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: AtomicFontGeneral(
                    data: "Harap minta pelanggan scan QR Code ini",
                    style: TextStyle(
                        fontFamily: AtomicFont.Campton,
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w400)),
              ),
              AtomicFontGeneral(
                  data: "di aplikasi My Home Credit.",
                  style: TextStyle(
                      fontFamily: AtomicFont.Campton,
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400)),
            ],
          ),
        ),
        frontPanel: Column(
          children: <Widget>[  
            CustomStepper(
              steps: [
                StepperStep(
                    title: 'Langkah 1',
                    body:
                        'Scan QR code terlebih dahulu sebelum mendownload aplikasi My Home Credit, Scan QR code terlebih dahulu sebelum mendownload aplikasi My Home Credit, Scan QR code terlebih dahulu sebelum mendownload aplikasi My Home Credit',
                    selected: true,
                    isStart: true),
                StepperStep(title: "Langkah 2", body: 'wow', selected: false),
                StepperStep(title: "Langkah 3", body: 'wow', selected: false),
                StepperStep(
                    title: "Langkah 4",
                    body: 'wow',
                    selected: false,
                    isEnd: true),
              ],
            )
          ],
        ),
      ),
    );
  }
}
