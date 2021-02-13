import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dbits_app/theme/_routes.dart';

class Gwinfo extends StatefulWidget {
  @override _GwinfoViewState createState() => _GwinfoViewState();
}

class _GwinfoViewState extends State<Gwinfo> {

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    final gwToken = Image.asset(
        "assets/CoinToken4.png",
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
                "GW TOKEN",
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
              child: gwToken,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              child: Text(
                "Scholarship",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0, color:
                Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
              child: Text(
                "Benefits: Scholarships for George Washington College",
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
                "George Washington",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
              child: Text(
                "First President of the United States of America",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              child: Text(
                "I was an American political leader, military general, statesman, and Founding Father who was the first president of the United States from 1789 to 1797. Previously, I led Patriot forces to victory in the nation's War for Independence. I presided at the Constitutional Convention of 1787, which established the U.S. Constitution and a federal government. Washington have been called the Father of His Country for my manifold leadership in the formative days of the new nation.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 15.0),
              child: Text(
                "Purchases on this platform specifically benefit those students who are eccepted to George Washington College. The admissions committiee will decide on how to allocate funding with the goal of providing the most funds to those students who need it the most.",
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