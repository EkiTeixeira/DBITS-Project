import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dbits_app/theme/_routes.dart';

class Buskinfo extends StatefulWidget {
  @override _BuskinfoViewState createState() => _BuskinfoViewState();
}

class _BuskinfoViewState extends State<Buskinfo> {

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    final buskToken = Image.asset(
        "assets/BuskCoin.png",
        height: mq.size.height/5
    );

    final bottom = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "To go back press BACK button -->",
              style: Theme
                  .of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(
                color: Colors.black,
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.authUserhome);
              },
              child: Text(
                "BACK",
                style: Theme
                    .of(context)
                    .textTheme
                    .subtitle1
                    .copyWith(
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ],
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        //padding: EdgeInsets.fromLTRB(0, 15, 0, 70),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:<Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 15.0),
              child: Text(
                "BUSK TOKEN",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
              child: buskToken,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
              child: Text(
                "Raising awareness for busking rights.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0, color:
                Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
              child: Text(
                "Shaun Hallier",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 15.0),
              child: Text(
                "Software Engineer & Musician",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 35.0),
              child: Text(
                "Here in Fresno, busking has never really been understood and mistaken for panhandling by the local government. This is most unfortunate for both the performers who love to perform as well as the people who love to enjoy the local talent. Raising awareness of the issue is important if we want to change the attitude of the city leaders down to the police that insists buskers moving along. As a musician of 17 years and a Fresno native, I want to see our local talent appreciated all over town, whether it is on an indoor stage or the stage of our city streets.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            bottom,
          ],
        ),
      ),
    );
  }
}