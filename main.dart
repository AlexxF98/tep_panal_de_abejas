import 'package:flutter/material.dart';

void main() => runApp(Aplicacion());

class Aplicacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Panal',
      home: MiPanal(),
    );
  }
}

class MiPanal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink,
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(30),
          child: ClipPath(
            clipper: Clipper(),
            child: Image(
                image: NetworkImage(
                    "https://i.etsystatic.com/15492164/r/il/7b4246/1977212377/il_570xN.1977212377_26bc.jpg")),
          ),
        ));
  }
}

class Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path()
      ..lineTo(size.width * 0.24, 0)
      ..lineTo(0, size.height * 0.5)
      ..lineTo(size.width * 0.24, size.height)
      ..lineTo(size.width * 0.76, size.height)
      ..lineTo(size.width, size.height * 0.5)
      ..lineTo(size.width * 0.76, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
