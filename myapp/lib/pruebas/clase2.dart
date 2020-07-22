//import 'package:curso/backend.dart';
import 'package:flutter/material.dart';

class Clase2 extends StatelessWidget {
  const Clase2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clase 2"),
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              //Util.onclick();
            },
          ),
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            HeaderWidget(),
            DescPuntuacionWidget(),
            BotoneraWidget(),
            ContenidoWidget()
          ],
        ),
      ),
    );
  }
}

class ContenidoWidget extends StatelessWidget {
  const ContenidoWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
    );
  }
}

class BotoneraWidget extends StatelessWidget {
  const BotoneraWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildBoton("CALL", Icons.call),
        buildBoton("ROUTE", Icons.send),
        buildBoton("SHARE", Icons.share),
      ],
    );
  }

  Column buildBoton(String nombre, IconData icon) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        Container(
          child: Text(
            nombre,
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ],
    );
  }
}

class DescPuntuacionWidget extends StatelessWidget {
  const DescPuntuacionWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [DescriptionWidget(), PuntacionWidget()],
      ),
    );
  }
}

class PuntacionWidget extends StatelessWidget {
  const PuntacionWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.red,
        ),
        Text("41"),
      ],
    );
  }
}

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Nombre del lugar....",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Subtitulo........",
          style: TextStyle(color: Colors.black38),
        ),
      ],
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 200,
      child: Image.network(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSQw8YqZ6mvh9--xmlxmmCIKUptbMs8MqYDtA&usqp=CAU",
        fit: BoxFit.fill,
      ),
    );
  }
}
