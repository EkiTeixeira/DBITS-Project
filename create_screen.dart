//import 'dart:math';

//import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:dbits_app/theme/_routes.dart';

//import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_auth/firebase_auth.dart';

class Createtoken extends StatefulWidget {

  @override _CreatetokenViewState createState() => _CreatetokenViewState();
}

class _CreatetokenViewState extends State<Createtoken> {

  final _formKey = GlobalKey<FormState>();
  TextEditingController _tokennameController;
  TextEditingController _creatornameController;
  TextEditingController _imageuploadController;
  TextEditingController _tokendescripController;
  // TODO: Will add fields for image upload later once HACKATHON is over
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    final logo = Image.asset(
      "assets/logo.png",
      height: mq.size.height / 6,
    );

    // TODO: HEDERA might have an API than can go here at well to create a form needed for creating tokens

    final tokennameField = TextFormField(
      controller: _tokennameController,
      style: TextStyle(
        color: Colors.black,
      ),
      cursorColor: Colors.green,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.green,
          ),
        ),
        hintText: "EX. DBITS Token",
        hintStyle: TextStyle(
          color: Colors.black54,
        ),
        labelText: "Token Name",
        labelStyle: TextStyle(
          color: Colors.green,
        ),
      ),
    );


    final creatornameField = TextFormField(
      controller: _creatornameController,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        color: Colors.black,
      ),
      cursorColor: Colors.green,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.green,
          ),
        ),
        hintText: "EX. John Doe or Team Name",
        hintStyle: TextStyle(
          color: Colors.black54,
        ),
        labelText: "Creator Name",
        labelStyle: TextStyle(
          color: Colors.green,
        ),
      ),
    );

    final imageuploadField = TextFormField(
      controller: _imageuploadController,
      style: TextStyle(
        color: Colors.black,
      ),
      cursorColor: Colors.green,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.green,
          ),
        ),
        hintText: "EX. imageoftokenfilename.png",
        hintStyle: TextStyle(
          color: Colors.black54,
        ),
        labelText: "Upload Image",
        labelStyle: TextStyle(
          color: Colors.green,
        ),
      ),
    );

    final tokendescripField =TextFormField(
      controller: _tokendescripController,
      style: TextStyle(
        color: Colors.black,
      ),
      cursorColor: Colors.green,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.green,
          ),
        ),
        hintText: "EX. A small description on your token explaining what the token is created for, also add any inspiration about your token.",
        hintStyle: TextStyle(
          color: Colors.black54,
        ),
        labelText: "Token Description",
        labelStyle: TextStyle(
          color: Colors.green,
        ),
      ),
    );

    final fields = Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          tokennameField,
          creatornameField,
          imageuploadField,
          tokendescripField,
        ],
      ),
    );

    final createButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      color: Colors.green,
      child: MaterialButton(
          minWidth: mq.size.width / 1.2,
          padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
          child: Text(
            "Create Token",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0, color:
            Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {
            // TODO: Add API from HEDERA in order to create the token and save to database for the user
          } /*async{
          WidgetsFlutterBinding.ensureInitialized();

          final Future<FirebaseApp> _fbApp = Firebase.initializeApp();

          DatabaseReference _testRef = FirebaseDatabase.instance.reference().child("test");
          _testRef.set("Hello World ${Random().nextInt(100)}");

          home: FutureBuilder(
            future: _fbApp,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                print ('You have an error! ${snapshot.error.toString()}');
                return Text('Something went wrong!');
              } else if (snapshot.hasData) {
                Navigator.of(context).pushNamed(AppRoutes.authRegister);
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }
          );

          try {
            User user = (await FirebaseAuth.instance
                .createUserWithEmailAndPassword(
                email: _emailController.text,
                password: _passwordController.text)) as User();
            /*if(user != null) {
              updateProfile updateInfo = UpdateUserInfo();
            }*/
          }catch(e) {
            print(e);
            _usernameController.text = "";
            _passwordController.text = "";
            _repasswordController = "" as TextEditingController;
            _emailController = "" as TextEditingController;
          }
        },*/
      ),
    );


    final bottom = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        createButton,
        Padding(
          padding: EdgeInsets.all(8.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "To cancel creation hit Cancel",
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
                "Cancel",
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
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(36),
            child: Container(
              height: mq.size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  logo,
                  Text(
                    "CREATE YOUR OWN TOKEN",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40.0, color:
                    Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  fields,
                  Padding(
                    padding: EdgeInsets.only(bottom: 100),
                    child: bottom,
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}

