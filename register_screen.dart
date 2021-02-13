//import 'dart:math';

//import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:dbits_app/theme/_routes.dart';

//import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_auth/firebase_auth.dart';

//import 'package:firebase_auth/firebase_auth.dart';

class Register extends StatefulWidget {
  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _usernameController;
  TextEditingController _emailController;
  TextEditingController _passwordController;
  TextEditingController _repasswordController;
  bool isloading = false;

  @override
  void initState() {
    //you need to initialize the controllers before using them.
    _usernameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _repasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _repasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    final logo = Image.asset(
      "assets/logo.png",
      height: mq.size.height / 4,
    );

    final usernameField = TextFormField(
      controller: _usernameController,
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
        hintText: "John Doe",
        hintStyle: TextStyle(
          color: Colors.black54,
        ),
        labelText: "Username",
        labelStyle: TextStyle(
          color: Colors.green,
        ),
      ),
    );

    final emailField = TextFormField(
      controller: _emailController,
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
        hintText: "youremailname@example.com",
        hintStyle: TextStyle(
          color: Colors.black54,
        ),
        labelText: "Email Address",
        labelStyle: TextStyle(
          color: Colors.green,
        ),
      ),
    );

    final passwordField = TextFormField(
      controller: _passwordController,
      style: TextStyle(
        color: Colors.black,
      ),
      cursorColor: Colors.green,
      obscureText: true,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.green,
          ),
        ),
        hintText: "enter password",
        hintStyle: TextStyle(
          color: Colors.black54,
        ),
        labelText: "Enter Password",
        labelStyle: TextStyle(
          color: Colors.green,
        ),
      ),
    );

    final repasswordField = TextFormField(
      controller: _repasswordController,
      style: TextStyle(
        color: Colors.black,
      ),
      cursorColor: Colors.green,
      obscureText: true,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.green,
          ),
        ),
        hintText: "re-enter password",
        hintStyle: TextStyle(
          color: Colors.black54,
        ),
        labelText: "Re-Enter Password",
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
          usernameField,
          emailField,
          passwordField,
          repasswordField,
        ],
      ),
    );

    final registerButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      color: Colors.green,
      child: MaterialButton(
          minWidth: mq.size.width / 1.2,
          padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
          child: isloading
              ? SizedBox(
                  child: CircularProgressIndicator(),
                  height: 15,
                  width: 15,
                )
              : Text(
                  "Register",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
          onPressed: () async {
            try {
              if (_emailController.text.isEmpty ||
                  _repasswordController.text.isEmpty ||
                  _passwordController.text.isEmpty) {
                // provide UI design here like snackbar or toast
                print('Please provide Credentials');
              } else if (_passwordController.text !=
                  _repasswordController.text) {
                print('Passwords do not match');
              } else {
                setState(() {
                  isloading = true;
                });
                await FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: _emailController.text.trim(),
                  password: _passwordController.text.trim(),
                );
                setState(() {
                  isloading = false;
                });
                _emailController.clear();
                _usernameController.clear();
                _passwordController.clear();
                _repasswordController.clear();
                Navigator.of(context).pushNamed(AppRoutes.authUserhome);
              }
            } catch (e) {
              print(e);
              setState(() {
                isloading = false;
              });
              print('Something went wrong');
            }
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
                password: _passwordController.text)) as User;
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
        registerButton,
        Padding(
          padding: EdgeInsets.all(8.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Already a DBITS member",
              style: Theme.of(context).textTheme.subtitle1.copyWith(
                    color: Colors.black,
                  ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.authLogin);
              },
              child: Text(
                "Login",
                style: Theme.of(context).textTheme.subtitle1.copyWith(
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
                  fields,
                  Padding(
                    padding: EdgeInsets.only(bottom: 100),
                    child: bottom,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
