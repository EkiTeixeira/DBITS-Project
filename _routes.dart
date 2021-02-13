import 'file:///C:/Users/eteix/AndroidStudioProjects/dbits_app_india/lib/views/activetokens_screen.dart';
import 'package:dbits_app/views/buskinfo_screen.dart';
import 'package:dbits_app/views/dbitsinfo_screen.dart';
import 'package:dbits_app/views/gwinfo_screen.dart';
import 'package:dbits_app/views/pancakeinfo_screen.dart';
import 'package:flutter/material.dart';
import 'package:dbits_app/views/login_screen.dart';
import 'package:dbits_app/views/register_screen.dart';
import 'package:dbits_app/views/userhome_screen.dart';
import 'package:dbits_app/views/create_screen.dart';

class AppRoutes {
  AppRoutes._();

  static const String authLogin = '/auth-login';
  static const String authRegister = '/auth-register';
  static const String authUserhome = '/auth-userhome';
  static const String authCreatetoken = '/auth-createtoken';
  static const String authActivetokens = '/auth-activetokens';

  static const String authBuskinfo = '/auth-buskinfo';
  static const String authPancakeinfo = '/auth-pancakeinfo';
  static const String authGwinfo = '/auth-gwinfo';
  static const String authDbitsinfo = '/auth-dbitsinfo';


  static Map<String, WidgetBuilder> define() {
    return {
      authLogin: (context) => Login(),
      authRegister: (context) => Register(),
      authUserhome: (context) => Userhome(),
      authCreatetoken: (context) => Createtoken(),
      authActivetokens: (context) => Activetokens(),
      authBuskinfo: (context) => Buskinfo(),
      authPancakeinfo: (context) => Pancakeinfo(),
      authGwinfo: (context) => Gwinfo(),
      authDbitsinfo: (context) => Dbitsinfo(),
    };
  }
}
