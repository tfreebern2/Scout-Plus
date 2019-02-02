//import 'package:flutter/rendering.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';
//import 'package:in_a_pinch/widgets/platform_widget_factory.dart';
//import 'dart:io' show Platform;
//
//class AndroidLoginButton extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Padding(
//      padding: EdgeInsets.all(10.0),
//      child: PlatformButton(
//        child: Text('Login'),
//        onPressed: () {
//          final snackBar = SnackBar(content: Text('Yay! A SnackBar!'));
//          Scaffold.of(context).showSnackBar(snackBar);
//        },
//      ),
//    );
//  }
//}
//
//class IosLoginButton extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Padding(
//      padding: EdgeInsets.all(10.0),
//      child: PlatformButton(
//        child: Text('Login'),
//        onPressed: () {
//          return CupertinoAlertDialog(
//            title: Text("Login Failed"),
//            content: Text("Sorry"),
//            actions: <Widget>[
//              CupertinoDialogAction(
//                child: Text("Ok"),
//                isDestructiveAction: true,
//                onPressed: () {
//                  Navigator.of(context, rootNavigator: true).pop("Discard");
//                },
//              )
//            ],
//          );
//        },
//      ),
//    );
//  }
//}
