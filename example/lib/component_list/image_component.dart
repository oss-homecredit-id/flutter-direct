import 'package:flutter/material.dart';
import 'package:flutter_direct/flutter_direct.dart';

class ImageComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text("Image Component"),
      ),
      body: Container(
        color: Colors.grey[300],
        padding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 10,
        ),
        child: Column(
          children: <Widget>[
            AtomicTypography(
              fontType: FontType.Title3,
              data: 'Image Avatar',
            ),
           SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                AtomicImage(
                  imageSrc: 'assets/images/female.png',
                  imageType: ImageType.Avatar,
                  useBorderRadius: true,
                ),
                AtomicImage(
                  imageSrc: 'assets/images/female.png',
                  imageType: ImageType.Avatar,
                  useBorderRadius: false,
                ),
                  AtomicImage(
                  imageType: ImageType.Avatar,
                  useBorderRadius: false,
                ),
              ],
            ),
            SizedBox(height: 20,),
             AtomicTypography(
              fontType: FontType.Title3,
              data: 'Image Banner',
            ),
            SizedBox(height: 20,),
            AtomicImage(
              imageSrc: 'assets/images/female.png',
              imageType: ImageType.Banner,
              useBorderRadius: true,
            ),
            SizedBox(height: 20,),
            AtomicTypography(
              fontType: FontType.Title3,
              data: 'Image Cover',
            ),
            SizedBox(height: 20,),
            AtomicImage(
              imageSrc: 'assets/images/female.png',
              imageType: ImageType.Cover,
              useBorderRadius: true,
            ),
            
          ],
        ),
      ),
    );
  }
}
