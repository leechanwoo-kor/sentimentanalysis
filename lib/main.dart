import 'package:flutter/material.dart';
import 'package:sentimentanalysis/screens/screen_index.dart';
import 'package:sentimentanalysis/screens/screen_login.dart';
import 'package:sentimentanalysis/screens/screen_splash.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'http test',
      routes: {
        '/index': (context) => IndexScreen(),
        '/login': (context) => LoginScreen(),
        '/splash': (context) => SplashScreen(),
      },
      initialRoute: '/splash',
    );
  }
}
