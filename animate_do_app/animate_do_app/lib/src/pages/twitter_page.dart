import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TwiterPage extends StatefulWidget {
  const TwiterPage({Key key}) : super(key: key);

  @override
  _TwiterPageState createState() => _TwiterPageState();
}

class _TwiterPageState extends State<TwiterPage> {
  bool activar = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pink[400],
          child: FaIcon(FontAwesomeIcons.play),
          onPressed: () {
            setState(() {
              activar = true;
            });
          }),
      backgroundColor: Color(0xff1DA1F2),
      body: Center(
        child: ZoomOut(
            animate: activar,
            from: 30,
            duration: Duration(seconds: 1),
            child:
                FaIcon(FontAwesomeIcons.robot, color: Colors.white, size: 50)),
      ),
    );
  }
}
