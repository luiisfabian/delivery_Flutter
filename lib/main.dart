import 'package:delivery_flutter_app/src/login/login_page.dart';
import 'package:delivery_flutter_app/src/utils/my_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Delivery App",
      initialRoute: 'login',
      routes: {
        'login' : (BuildContext context) => LoginPage(),
      },
      theme: ThemeData(
        primaryColor: myColors.primaryColor,

      ),
    );
  }
}