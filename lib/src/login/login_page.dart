import 'package:delivery_flutter_app/src/utils/my_colors.dart';
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
      body: Container(
        child: Container(
          width: double.infinity,
          child: ListView(
            children: [
              Column(
                children: [
                  imageBanner(),
                  textFieldEmail(),
                  textFieldPassword(),
                  buttonLogin(),
                  rowDonotRememberAccount(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget imageBanner() {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01, bottom: MediaQuery.of(context).size.height * 0.1),
      child: Image.asset(
        'assets/img/delivery2.png',
        
        width: 200,
        height: 200,
      ),
    );
  }

  Widget textFieldEmail() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
        color: myColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Email o Usuario",
          hintStyle: TextStyle(color: myColors.primaryColorDark),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          prefixIcon: Icon(
            Icons.email,
            color: myColors.primaryColor,
          ),
        ),
      ),
    );
  }

  Widget textFieldPassword() {
     return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
        color: myColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Password",
          hintStyle: TextStyle(color: myColors.primaryColorDark),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          prefixIcon: Icon(
            Icons.lock,
            color: myColors.primaryColor,
          ),
        ),
      ),
    );
  }

  Widget buttonLogin() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: myColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.symmetric(vertical: 15),
        ),
        onPressed: () {},
        child: Text("Ingresar"),
      ),
    );
  }

  Widget rowDonotRememberAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "¿No tienes Cuenta?",
          style: TextStyle(color: myColors.primaryColor),
        ),
        SizedBox(
          width: 10.0,
        ),
        Text(
          "Registrate",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: myColors.primaryColor),
        )
      ],
    );
  }
}
