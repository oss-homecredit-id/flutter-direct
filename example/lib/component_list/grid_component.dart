import 'package:flutter/material.dart';
import 'package:flutter_direct/flutter_direct.dart';

class GridComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GridView Component"),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: MoleculeGridView(
                      onTap: () {
                        print("click");
                      },
                      crossItemCount: 3,
                      generateItem: 9,
                      item: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
                              margin: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.transparent, width: 1.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: new Offset(1.0, 3.0),
                                      blurRadius: 1.0,
                                    )
                                  ],
                                  borderRadius: BorderRadius.all(
                                       Radius.circular(6.0))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.ac_unit),
                                  Text("Title")
                                ],
                              ),
                            ),
                            Text("Subtitle")
                          ],
                        ),
                      )),
                ),
              )
            ],
          ),
        ));
  }
}
