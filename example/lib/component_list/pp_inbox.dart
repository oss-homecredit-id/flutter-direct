import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class PPInboxScreen extends StatefulWidget {
  @override
  _PPInboxScreenState createState() => _PPInboxScreenState();
}

class ChatModel {
  final String avatarUrl;
  final String name;
  final String datetime;
  final String message;

  ChatModel({this.avatarUrl, this.name, this.datetime, this.message});

  static final List<ChatModel> dummyData = [
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/34.jpg",
      name: "Komisi Masuk",
      datetime: "20:18",
      message:
          "Selamat, anda mendapat Rp. 30.000 dari kontrak pelanggan dengan nomor 100802000",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/49.jpg",
      name: "Komisi Masuk",
      datetime: "19:22",
      message:
          "Selamat, anda mendapat Rp. 30.000 dari kontrak pelanggan dengan nomor 100802000",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/77.jpg",
      name: "Komisi Masuk",
      datetime: "14:34",
      message:
          "Selamat, anda mendapat Rp. 30.000 dari kontrak pelanggan dengan nomor 100802000",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      name: "Komisi Masuk",
      datetime: "11:05",
      message:
          "Selamat, anda mendapat Rp. 30.000 dari kontrak pelanggan dengan nomor 100802000",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/83.jpg",
      name: "Komisi Masuk",
      datetime: "09:46",
      message:
          "Selamat, anda mendapat Rp. 30.000 dari kontrak pelanggan dengan nomor 100802000",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/85.jpg",
      name: "Komisi Masuk",
      datetime: "08:15",
      message:
          "Selamat, anda mendapat Rp. 30.000 dari kontrak pelanggan dengan nomor 100802000",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/49.jpg",
      name: "Komisi Masuk",
      datetime: "19:22",
      message:
          "Selamat, anda mendapat Rp. 30.000 dari kontrak pelanggan dengan nomor 100802000",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/77.jpg",
      name: "Komisi Masuk",
      datetime: "14:34",
      message:
          "Selamat, anda mendapat Rp. 30.000 dari kontrak pelanggan dengan nomor 100802000",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      name: "Komisi Masuk",
      datetime: "11:05",
      message:
          "Selamat, anda mendapat Rp. 30.000 dari kontrak pelanggan dengan nomor 100802000",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/83.jpg",
      name: "Komisi Masuk",
      datetime: "09:46",
      message:
          "Selamat, anda mendapat Rp. 30.000 dari kontrak pelanggan dengan nomor 100802000",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/85.jpg",
      name: "Komisi Masuk",
      datetime: "08:15",
      message:
          "Selamat, anda mendapat Rp. 30.000 dari kontrak pelanggan dengan nomor 100802000",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/49.jpg",
      name: "Komisi Masuk",
      datetime: "19:22",
      message:
          "Selamat, anda mendapat Rp. 30.000 dari kontrak pelanggan dengan nomor 100802000",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/77.jpg",
      name: "Komisi Masuk",
      datetime: "14:34",
      message:
          "Selamat, anda mendapat Rp. 30.000 dari kontrak pelanggan dengan nomor 100802000",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      name: "Komisi Masuk",
      datetime: "11:05",
      message:
          "Selamat, anda mendapat Rp. 30.000 dari kontrak pelanggan dengan nomor 100802000",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/83.jpg",
      name: "Komisi Masuk",
      datetime: "09:46",
      message:
          "Selamat, anda mendapat Rp. 30.000 dari kontrak pelanggan dengan nomor 100802000",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/85.jpg",
      name: "Komisi Masuk",
      datetime: "08:15",
      message:
          "Selamat, anda mendapat Rp. 30.000 dari kontrak pelanggan dengan nomor 100802000",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/49.jpg",
      name: "Komisi Masuk",
      datetime: "19:22",
      message:
          "Selamat, anda mendapat Rp. 30.000 dari kontrak pelanggan dengan nomor 100802000",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/77.jpg",
      name: "Komisi Masuk",
      datetime: "14:34",
      message:
          "Selamat, anda mendapat Rp. 30.000 dari kontrak pelanggan dengan nomor 100802000",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      name: "Komisi Masuk",
      datetime: "11:05",
      message:
          "Selamat, anda mendapat Rp. 30.000 dari kontrak pelanggan dengan nomor 100802000",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/83.jpg",
      name: "Komisi Masuk",
      datetime: "09:46",
      message:
          "Selamat, anda mendapat Rp. 30.000 dari kontrak pelanggan dengan nomor 100802000",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/85.jpg",
      name: "Komisi Masuk",
      datetime: "08:15",
      message:
          "Selamat, anda mendapat Rp. 30.000 dari kontrak pelanggan dengan nomor 100802000",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/49.jpg",
      name: "Komisi Masuk",
      datetime: "19:22",
      message:
          "Selamat, anda mendapat Rp. 30.000 dari kontrak pelanggan dengan nomor 100802000",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/77.jpg",
      name: "Komisi Masuk",
      datetime: "14:34",
      message:
          "Selamat, anda mendapat Rp. 30.000 dari kontrak pelanggan dengan nomor 100802000",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      name: "Komisi Masuk",
      datetime: "11:05",
      message:
          "Selamat, anda mendapat Rp. 30.000 dari kontrak pelanggan dengan nomor 100802000",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/83.jpg",
      name: "Komisi Masuk",
      datetime: "09:46",
      message:
          "Selamat, anda mendapat Rp. 30.000 dari kontrak pelanggan dengan nomor 100802000",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/85.jpg",
      name: "Komisi Masuk",
      datetime: "08:15",
      message:
          "Selamat, anda mendapat Rp. 30.000 dari kontrak pelanggan dengan nomor 100802000",
    ),
  ];
}

class _PPInboxScreenState extends State<PPInboxScreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  Widget buildContent() => Container(
        decoration: BoxDecoration(color: Colors.white),
        height: MediaQuery.of(context).size.height * 10,
        padding: EdgeInsets.only(bottom: 20),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: ChatModel.dummyData.length,
          itemBuilder: (context, index) {
            ChatModel _model = ChatModel.dummyData[index];
            return Container(
              //padding: const EdgeInsets.all(10.0),
              child: new Slidable(
                actionPane: SlidableDrawerActionPane(),
                child: ListTile(
                  leading: Container(
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF4F4F4),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                    child: Center(
                      child: Text('Rp', style: TextStyle(fontFamily: 'PtSans')),
                    ),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(_model.name,
                          style: TextStyle(
                              fontFamily: 'PtSans',
                              fontWeight: FontWeight.bold,
                              fontSize: 13)),
                      Text(_model.datetime,
                          style: TextStyle(
                              fontFamily: 'PtSans',
                              fontWeight: FontWeight.bold,
                              fontSize: 12)),
                    ],
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(_model.message,
                          style: TextStyle(
                              fontFamily: 'PtSans',
                              fontWeight: FontWeight.bold,
                              fontSize: 13)),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
                actions: <Widget>[
                  IconSlideAction(
                    color: Colors.orange,
                    //icon: Icons.star_border,
                    iconWidget: Icon(
                      Icons.star_border,
                      color: Colors.white,
                    ),
                    onTap: () => {},
                  ),
                ],
                secondaryActions: <Widget>[
                  IconSlideAction(
                    color: Colors.red,
                    icon: Icons.delete,
                    onTap: () => {},
                  ),
                ],
              ),
            );
          },
        ),
      );

  @override
  void initState() {
    _controller = TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          margin: EdgeInsets.only(left: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AutoSizeText(
                'Pesan',
                style: TextStyle(
                    fontFamily: 'Campton',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 24.0),
                minFontSize: 24.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 22.0),
                height: 35,
                width: 35,
                decoration: new BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Center(
                    child: Text('4',
                        style: TextStyle(
                            fontFamily: 'Campton',
                            fontWeight: FontWeight.bold))),
              )
            ],
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(130),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  key: Key('search'),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    suffixIcon: GestureDetector(
                      onTap: () => {},
                      child: Icon(Icons.close, color: Colors.grey),
                    ),
                    hintText: 'Cari Pesan',
                    hintStyle: TextStyle(fontFamily: 'PtSans'),
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 10, bottom: 10),
                    child: TabBar(
                      isScrollable: true,
                      controller: _controller,
                      indicatorColor: Colors.red,
                      labelColor: Colors.black,
                      unselectedLabelStyle: TextStyle(color: Colors.white),
                      tabs: <Widget>[
                        Tab(
                          child: Text('Semua',
                              style: TextStyle(fontFamily: 'Campton')),
                        ),
                        Tab(
                          child: Text('Favorit',
                              style: TextStyle(fontFamily: 'Campton')),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: buildContent(),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 0,
      //   items: [
      //     new BottomNavigationBarItem(
      //      icon: Icon(Icons.home),
      //      title: Text('Home'),
      //    ),
      //    new BottomNavigationBarItem(
      //      icon: Icon(Icons.mail),
      //      title: Text('Messages'),
      //    ),
      //    new BottomNavigationBarItem(
      //      icon: Icon(Icons.person),
      //      title: Text('Profile')
      //    )
      //   ],
      // ),
    );
  }
}
