import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dbits_app/theme/_routes.dart';

class Userhome extends StatefulWidget {
  @override _UserhomeViewState createState() => _UserhomeViewState();
}

class _UserhomeViewState extends State<Userhome> {

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    final logo = Image.asset(
      "assets/logoOpenPg.png",
      height: mq.size.height/9,
    );

    final buskToken = Image.asset(
        "assets/BuskCoin.png",
        height: mq.size.height/10
    );

    final coinToken1 = Image.asset(
        "assets/CoinToken3.png",
        height: mq.size.height/10
    );

    final coinToken2 = Image.asset(
        "assets/CoinToken4.png",
        height: mq.size.height/10
    );

    final dbitsToken = Image.asset(
        "assets/DBITSToken.png",
        height: mq.size.height/10
    );

    final createButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      color: Colors.white,
      child: MaterialButton(
        minWidth: mq.size.width / 1.2,
        padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        child: Text(
          "Create Token",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0, color:
          Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed:  () {
          Navigator.of(context).pushNamed(AppRoutes.authCreatetoken);
        },
      ),
    );

    final buttons = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(12),
        ),
        createButton,
      ],
    );

    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        //padding: EdgeInsets.fromLTRB(0, 15, 0, 70),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:<Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
              child: logo,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 5.0),
              child: Text(
                "Digital Beauty In The Streets",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0, color:
                Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
              child: Text(
                "ACTIVE TOKENS",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0, color:
                Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.authBuskinfo);
              },
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
              child: Text(
                "Busk Token Info.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0, color:
                Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
              child: buskToken,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.authPancakeinfo);
              },
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
              child: Text(
                "Pancake Token Info.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0, color:
                Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
              child: coinToken1,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.authGwinfo);
              },
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
              child: Text(
                "GW Token Info.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0, color:
                Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
              child: coinToken2,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.authDbitsinfo);
              },
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
              child: Text(
                "DBITS Token Info.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0, color:
                Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
              child: dbitsToken,
            ),
            buttons,
          ],
        ),
      ),
    );
  }
}