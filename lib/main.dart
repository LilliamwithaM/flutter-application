import 'package:flutter/material.dart';
import 'package:carlosart17_app/pages/home.dart';
import 'package:carlosart17_app/pages/login.dart';
import 'package:carlosart17_app/pages/signin.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Login(),
      '/home': (context) => Home(),
      '/signin': (context) => Signin(),
    },
  ));
}