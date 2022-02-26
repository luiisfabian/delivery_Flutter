import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("login"),
        ),
        body: Container(
          margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 30.0),
          child: Column(
            children: [
              Text("PRIMER TEXTO"),
              TextFormField(
                decoration: InputDecoration(hintText: "Descripción"),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Ingresar"),
              ),
            ],
          ),
        ));
  }
}
