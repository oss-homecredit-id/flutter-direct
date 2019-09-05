part of flutter_direct;

enum ImageType { Avatar, Cover, LargeBanner, Banner, LargeThumbnail, Thumbnail }

class AtomicImage extends StatelessWidget {
  final GestureTapCallback onPressed;
  final ImageType imageType;
  final String imageSrc;
  final BorderRadius customBorderRadius;
  final double height;
  final bool useBorderRadius;

  AtomicImage({
    this.onPressed,
    this.imageType,
    this.imageSrc,
    this.customBorderRadius,
    this.height,
    this.useBorderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Center(
            child: Container(
              height: imageType == ImageType.Avatar
                  ? 64
                  : imageType == ImageType.Cover
                      ? 202.71
                      : imageType == ImageType.Banner
                          ? 64
                          : imageType == ImageType.LargeBanner
                              ? 101
                              : imageType == ImageType.Thumbnail
                                  ? 85
                                  : imageType == ImageType.LargeThumbnail
                                      ? 152
                                      : 100,
              width: imageType == ImageType.Avatar
                  ? 64
                  : imageType == ImageType.Banner
                      ? 160
                      : imageType == ImageType.Thumbnail
                          ? 85
                          : imageType == ImageType.LargeThumbnail
                              ? 152
                              : MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: useBorderRadius == true
                    ? BorderRadius.circular(8.0)
                    : imageType == ImageType.Avatar
                        ? BorderRadius.circular(36.0)
                        : useBorderRadius == false
                            ? BorderRadius.circular(0)
                            : customBorderRadius,
                image: DecorationImage(
                  image: imageSrc == null
                      ? AssetImage('assets/female.png',
                          package: 'flutter_direct')
                      : ExactAssetImage(imageSrc,
                          ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
