import 'package:flutter/material.dart';
import 'package:stonehenge/constants.dart';
import 'package:stonehenge/size-config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          Padding(
            padding: EdgeInsets.all(defaultSize * 2),
            child: TitleText(title: "Kategóriák szerint"),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                MortarCategory(),
                MortarCategory(),
                MortarCategory(),
              ],
            ),
          ),
          // Divider(height: 5),
          Padding(
            padding: EdgeInsets.all(defaultSize * 2),
            child: TitleText(title: "Összes anyag"),
          ),
          Container(
            width: defaultSize * 14.5,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30)),
            child: AspectRatio(
              aspectRatio: 0.693,
              child: Column(children: <Widget>[
                AspectRatio(
                    aspectRatio: 1,
                    child: Image(
                        image: NetworkImage(
                            'https://previews.123rf.com/images/ieang/ieang1709/ieang170900020/86360123-texture-of-ready-mixed-concrete-cement-mortar-for-building-floor-house-.jpg'
                            )
                            )
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: defaultSize),
                              child: TitleText(title: "Homokkő"),
                            ),
              ]
              )
              ,
              
            ),
          
          )
        ]));
  }
}

class MortarCategory extends StatelessWidget {
  MortarCategory({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Padding(
      padding: EdgeInsets.all(defaultSize * 2),
      child: SizedBox(
        width: defaultSize * 20.5,
        child: AspectRatio(
          aspectRatio: 0.8,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              ClipPath(
                clipper: CategoryCustomShape(),
                child: AspectRatio(
                    aspectRatio: 1.3,
                    child: Container(
                        padding: EdgeInsets.all(defaultSize * 2),
                        color: Colors.grey[200],
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              TitleText(title: "Terzithes"),
                              SizedBox(height: defaultSize),
                              Text(
                                "3 alapanyag",
                                style: TextStyle(
                                    color: kTextColor.withOpacity(0.6)),
                              )
                            ]))),
              ),
              Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: AspectRatio(
                      aspectRatio: 1.23,
                      child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      'https://previews.123rf.com/images/ieang/ieang1709/ieang170900020/86360123-texture-of-ready-mixed-concrete-cement-mortar-for-building-floor-house-.jpg')))))),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryCustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double height = size.height;
    double width = size.width;
    double cornerSize = 30;
    path.lineTo(0, height - cornerSize);
    path.quadraticBezierTo(0, height, cornerSize, height);
    path.lineTo(width - cornerSize, height);
    path.quadraticBezierTo(width, height, width, height - cornerSize);
    path.lineTo(width, cornerSize);
    path.quadraticBezierTo(width, 0, width - cornerSize, 0);
    path.lineTo(cornerSize, cornerSize * 0.75);
    path.quadraticBezierTo(0, cornerSize, 0, cornerSize * 2);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class TitleText extends StatelessWidget {
  const TitleText({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Text(
      title,
      style:
          TextStyle(fontSize: defaultSize * 1.6, fontWeight: FontWeight.bold),
    );
  }
}
