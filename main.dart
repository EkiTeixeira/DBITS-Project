import 'package:flutter/material.dart';
import 'package:dbits_app/views/opening_screen.dart';
import 'package:dbits_app/theme/_routes.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome To DBITS',
      routes: AppRoutes.define(),
      home: OpeningView(),
    );// MaterialApp
  }
}