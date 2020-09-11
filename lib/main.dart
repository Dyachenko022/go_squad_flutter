import 'package:flutter/material.dart';
import 'package:go_squad/authorize.dart';
import 'package:go_squad/home_page.dart';
import 'package:go_squad/login.dart';
import 'dart:async';
import 'package:go_squad/register.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/homepage',
    routes: {
      '/' : (context) => Authorize(),
      '/register' : (context) => Register(),
      '/login' : (context) => Login(),
      '/homepage' : (context) => HomePage()
    },
  )
  );
}



