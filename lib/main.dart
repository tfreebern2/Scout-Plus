import 'package:flutter/material.dart';
import 'package:scout_plus/ui/onboarding.dart';

void main() => runApp(Landing());

class Landing extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'In A Pinch',
      theme: new ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: Onboarding(),
      debugShowCheckedModeBanner: false,
    );
  }
}
