import 'package:flutter/material.dart';

class DetallesPage extends StatelessWidget {
  final item;
  const DetallesPage({Key key, @required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalle"),
      ),
      //body: Center(child: Text("$item detalle")),
      body: Center(
        child: Column(
          children: [
            Text("$item Detalles"),
            RaisedButton(
              child: Text("Volver"),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
