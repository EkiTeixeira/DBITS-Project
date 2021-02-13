import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:dbits_app/theme/_routes.dart';

//import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController;
  TextEditingController _passwordController;
  bool isLoading = false;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    final logo = Image.asset(
      "assets/logo.png",
      height: mq.size.height / 4,
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

    final passwordField = Column(
      children: <Widget>[
        TextFormField(
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
            hintText: "password",
            hintStyle: TextStyle(
              color: Colors.black54,
            ),
            labelText: "Enter Password",
            labelStyle: TextStyle(
              color: Colors.green,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            MaterialButton(
              child: Text(
                "Forgot Password",
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: Colors.black54),
              ),
              onPressed: () {
                // TODO: Create forget password popup.
              },
            ),
          ],
        ),
      ],
    );

    final fields = Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          emailField,
          passwordField,
        ],
      ),
    );

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      color: Colors.green,
      child: MaterialButton(
        minWidth: mq.size.width / 1.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: isLoading
            ? SizedBox(
                child: CircularProgressIndicator(),
                height: 15,
                width: 15,
              )
            : Text(
                "Login",
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
                _passwordController.text.isEmpty) {
              //TODO: write UI Logic here for empty fields
              print('Please provide Credentials');
            } else {
              setState(() {
                isLoading = true;
              });
              await FirebaseAuth.instance.signInWithEmailAndPassword(
                  email: _emailController.text.trim(),
                  password: _passwordController.text.trim());
              setState(() {
                isLoading = false;
              });
              _emailController.clear();
              _passwordController.clear();
              print('Success');
              Navigator.of(context).pushNamed(AppRoutes.authUserhome);
              //TODO: here write the logic to goto the desired screen after login
            }
          } catch (e) {
            print(e);
            print('Something went wrong');
          }

        },
      ),
    );

    final bottom = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        loginButton,
        Padding(
          padding: EdgeInsets.all(8.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "If not a member?",
              style: Theme.of(context).textTheme.subtitle1.copyWith(
                    color: Colors.black,
                  ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.authRegister);
              },
              child: Text(
                "Sign Up",
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
