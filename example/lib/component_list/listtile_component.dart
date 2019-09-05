import 'package:flutter/material.dart';
import 'package:flutter_direct/flutter_direct.dart';

class ListitleComponent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Atomic List Tile"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 16.0
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: AtomicListtile(
                  listTileType: ListTileType.Inbox,
                  leading: 'HC',
                  subTitle: 'Selamat, anda mendapat Rp. 30.000 dari kontrak pelanggan dengan nomor 100802000',
                  titleInbox: 'Komisi Masuk',
                  titleInboxDate: '20:18',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}