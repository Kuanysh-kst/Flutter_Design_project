import 'package:flutter/material.dart';
import 'package:flutter_application_8/screens/input_screen.dart';
import 'package:flutter_application_8/screens/mainscreen.dart';
import 'package:flutter_application_8/screens/phone_card.dart';
import 'package:flutter_application_8/screens/route_catolog.dart';
import 'package:flutter_application_8/screens/service_num.dart';
import 'package:flutter_application_8/screens/slider.dart';
// import 'package:flutter_application_8/screens/slider.dart';
import 'package:flutter_application_8/screens/start.dart';
import 'package:flutter_application_8/screens/time_line_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TwoCard(),
    );
  }
}
