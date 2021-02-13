import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dbits_app/theme/_routes.dart';

class Pancakeinfo extends StatefulWidget {
  @override _PancakeinfoViewState createState() => _PancakeinfoViewState();
}

class _PancakeinfoViewState extends State<Pancakeinfo> {

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    final pancakeToken = Image.asset(
        "assets/CoinToken3.png",
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
                Navigator.pop(context);
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
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
              child: Text(
                "PANCAKE TOKEN",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              child: pancakeToken,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              child: Text(
                "Song + Signed Limited Edition Art",
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
                "Benefits: Camp Lisa Foundation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
              child: Text(
                "LISA LOEB",
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
                "Grammy Winning Recording Artist & Songwriter",
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
                "Camp Lisa is basically as close as I can get to a time machine. This music takes me back to my pre-teen years, which are probably more similar to even younger kids lives today. I wanted to remember some traditional songs and write some new camp-themed songs that could take you from leaving home, through your camp days, to saying goodbye until the next time. In the recording process with my songwriter/musician friends, Michelle Lewis and Dan Petty, the music made me realize that I’d love to share the camp experience with kids who might not normally have the opportunity to go to summer camp. Proceeds from PancakeCoin will go towards my foundation and is named after one of my songs, Disappointing Pancake.  Enjoy!",
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