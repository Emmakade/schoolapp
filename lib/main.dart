import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:schoolapp/screens/dashboard.dart';
import 'package:schoolapp/screens/login.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OverlaySupport.global(
      child: MaterialApp(
        //OverlaySupport.global
        initialRoute: '/login',
        routes: {
          '/login': (context) => LoginPage(),
          '/dashboard': (context) => Dashboard(),
        },
        //debugShowCheckedModeBanner: false,
      ),
    );
  }
}
