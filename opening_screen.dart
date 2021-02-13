import 'package:flutter/material.dart';
import 'package:dbits_app/theme/_routes.dart';

class OpeningView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    final logo = Image.asset(
      "assets/logoOpenPg.png",
      height: mq.size.height/4,
    );

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      color: Colors.white,
      child: MaterialButton(
        minWidth: mq.size.width / 1.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          "Login",
          textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 20.0, color:
            Colors.green,
            fontWeight: FontWeight.bold,
            ),
        ),
        onPressed:  () {
          Navigator.of(context).pushNamed(AppRoutes.authLogin);
        },
      ),
    );

    final registerButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      color: Colors.white,
      child: MaterialButton(
        minWidth: mq.size.width / 1.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          "Register",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0, color:
          Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed:  () {
          Navigator.of(context).pushNamed(AppRoutes.authRegister);
        },
      ),
    );

    final buttons = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        loginButton,
        Padding(
          padding: EdgeInsets.all(12),
        ),
        registerButton,
      ],
    );

    return Scaffold(
      backgroundColor: Colors.green,
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 15, 0, 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:<Widget>[
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: logo,
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                "Digital Beauty In The Streets",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50.0, color:
                Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Create, Share, Connect",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0, color:
                Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            buttons,
          ],
        ),
      ),
    );
  }
}