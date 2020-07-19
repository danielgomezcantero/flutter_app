import 'package:animate_do/animate_do.dart';
import 'package:animate_do_app/src/pages/twitter_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            FadeIn(delay: Duration(milliseconds: 500), child: Text('Ventapp')),
        actions: <Widget>[
          IconButton(
              icon: FaIcon(FontAwesomeIcons.thumbsUp),
              onPressed: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (BuildContext context) => TwiterPage()));
              }),
          SlideInLeft(
            from: 100,
            child: IconButton(
              icon: Icon(Icons.navigate_next),
              onPressed: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (BuildContext context) => Pagina1Page()));
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: FaIcon(FontAwesomeIcons.play), onPressed: () {}),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // new Image.asset(
            //   '../assets/logoPalermo.png',
            //   width: 10.0,
            //   height: 10.0,
            // ),
            ElasticIn(
                delay: Duration(milliseconds: 1100),
                child:
                    Icon(Icons.pie_chart, color: Colors.pinkAccent, size: 40)),
            FadeInDown(
              delay: Duration(milliseconds: 200),
              child: Text('Ventapp',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w200)),
            ),
            FadeInDown(
              delay: Duration(milliseconds: 800),
              child: Text('Sistema de Facturación',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
            ),
            FadeInLeft(
              delay: Duration(milliseconds: 1100),
              child: Container(
                width: 200,
                height: 3,
                color: Colors.teal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
