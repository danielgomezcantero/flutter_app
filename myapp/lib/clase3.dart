import 'package:flutter/material.dart';
import 'package:myapp/clase3_detalles.dart';

class clase3 extends StatelessWidget {
  const clase3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = ["item1", "item2", "item3", "item4", "item5"];

    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Listas"),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, i) {
              return ListTile(
                  leading: Icon(Icons.verified_user),
                  title: Text(items[i]),
                  trailing: Icon(Icons.menu),
                  onTap: () {
                    print("${items[i]} fue seleccionado");

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetallesPage(item: items[i])));
                  });
            }
            // children: <Widget>[
            //   Text("Item 1"),
            //   Text("Item 1"),
            //   Text("Item 1"),
            //   Text("Item 1"),
            //   Text("Item 1"),
            //   Text("Item 1"),
            //],
            ),
      ),
    );
  }
}
