import 'package:flutter/material.dart';

class Imagen1 extends StatelessWidget {
  const Imagen1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        child: Image.asset(
          "assets/images/perrito.jpg",
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

class Imagen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        child: Image.network(
            "https://image.shutterstock.com/image-photo/bright-spring-view-cameo-island-600w-1048185397.jpghttps://image.shutterstock.com/image-photo/bright-spring-view-cameo-island-600w-1048185397.jpghttps://image.shutterstock.com/image-photo/bright-spring-view-cameo-island-600w-1048185397.jpghttps://image.shutterstock.com/image-photo/bright-spring-view-cameo-island-600w-1048185397.jpghttps://image.shutterstock.com/image-photo/bright-spring-view-cameo-island-600w-1048185397.jpghttps://image.shutterstock.com/image-photo/bright-spring-view-cameo-island-600w-1048185397.jpg"),
        alignment: Alignment.center,
      ),
    );
  }
}
