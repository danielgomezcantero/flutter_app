import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class NavegacionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => new _NotificationModel(),
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.pink, title: Text('Notifications Pages')),
        floatingActionButton: BotonFlotante(),
        bottomNavigationBar: BottomNavigation(),
      ),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int numeroNotification =
        Provider.of<_NotificationModel>(context).numero;

    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Colors.pink,
      items: [
        BottomNavigationBarItem(
            title: Text('Bones'), icon: FaIcon(FontAwesomeIcons.bone)),
        BottomNavigationBarItem(
          title: Text('Notifications'),
          icon: Stack(
            children: <Widget>[
              FaIcon(FontAwesomeIcons.bell),
              Positioned(
                top: 0.0,
                right: 0.0,
                // child: Icon(Icons.brightness_1, size: 8,color: Colors.red,),
                child: BounceInDown(
                  from: 10,
                  animate: (numeroNotification > 0) ? true : false,
                  child: Container(
                    child: Text(
                      '$numeroNotification',
                      style: TextStyle(color: Colors.white, fontSize: 8),
                    ),
                    alignment: Alignment.center,
                    width: 13,
                    height: 13,
                    decoration: BoxDecoration(
                        color: Colors.redAccent, shape: BoxShape.circle),
                  ),
                ),
              )
            ],
          ),
        ),
        BottomNavigationBarItem(
            title: Text('My Dog'), icon: FaIcon(FontAwesomeIcons.dog)),
      ],
    );
  }
}

class BotonFlotante extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: Colors.pink,
        child: FaIcon(FontAwesomeIcons.play),
        onPressed: () {
          int numero =
              Provider.of<_NotificationModel>(context, listen: false).numero;
          numero++;

          Provider.of<_NotificationModel>(context, listen: false).numero =
              numero;
        });
  }
}

class _NotificationModel extends ChangeNotifier {
  int _numero = 0;

  get numero => this._numero;

  set numero(int valor) {
    this._numero = valor;
    notifyListeners();
  }
}
