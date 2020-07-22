import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  CounterPage({Key key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
      ),
      body: Center(
        child: CounterWidget(count: count),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              // observable de flutter, toma los cambios y reconstruye el arbol
              count++;
            });
            print("$count");
          }),
    );
  }
}

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    Key key,
    @required this.count,
  }) : super(key: key);

  final int count;

  @override
  Widget build(BuildContext context) {
    return Text(
      "$count",
      style: TextStyle(fontSize: 30),
    );
  }
}
