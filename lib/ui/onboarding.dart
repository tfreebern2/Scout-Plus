import 'package:flutter/material.dart';
import 'package:scout_plus/ui/welcome.dart';

class Onboarding extends StatefulWidget {
  Onboarding({Key key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _buildWelcome(),
        resizeToAvoidBottomPadding: false);
  }

  Widget _buildWelcome() {
    return Welcome();
  }
}
