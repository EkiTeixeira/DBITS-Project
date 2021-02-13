import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dbits_app/theme/_routes.dart';

class Dbitsinfo extends StatefulWidget {
  @override _DbitsinfoViewState createState() => _DbitsinfoViewState();
}

class _DbitsinfoViewState extends State<Dbitsinfo> {

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    final dbitsToken = Image.asset(
        "assets/DBITSToken.png",
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
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
              child: Text(
                "D-BITS TOKEN",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
              child: dbitsToken,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
              child: Text(
                "Digital Dance Asset",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0, color:
                Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0.0),
              child: Text(
                "Benefits: The Real Snap Boogie Street Perfomer Fund",
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
                "The Real Snap Boogie: America's Got Talent Semi-Finalist & Street Performer",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
              child: Text(
                "Street performing is what is helping me perfect my craft and I am determined to give back to this community. We have been hit hard by the pandemic but we will bounce back. D-BITS will help integrate live art into our newly digitized world. Our expectation is for artists to gain a head start in this contemporary world of ours. They will be presented with this effective and reliable resource in order to utilize their talents and keep their place in this fast-paced, digital, and distributed ledger system centered world. The digital asset included here can be used in the following gaming platforms:",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
              child: Text(
                "Dance World Extreme - World of Whoa - Alternate Planets - Space Virus Mania",
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