import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    return Container(
        child: Scaffold(
      body: Form(
        key: _formkey,
        child: Column(children: [
          FlutterLogo(),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Usuario",
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Password",
            ),
          ),
          RaisedButton(
              child: Text("Login"),
              onPressed: () {
                Navigator.pushNamed(context, "/imagen1");
              }),
          RaisedButton(child: Text("Register"), onPressed: () {}),
        ]),
      ),
    ));
  }
}
