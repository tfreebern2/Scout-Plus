import 'package:flutter/material.dart';
import 'package:scout_plus/ui/onboarding.dart';

void main() => runApp(Landing());

class Landing extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'In A Pinch',
      home: Onboarding(),
      debugShowCheckedModeBanner: false,
    );
  }
}
