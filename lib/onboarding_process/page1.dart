import 'package:flutter/material.dart';
import 'package:scout_plus/utils/assets.dart';
import 'package:scout_plus/custom_widgets/circle_with_image.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.blue[900],
                Colors.blue[600],
                Colors.black54],
              begin: Alignment(0.5, -1.0),
              end: Alignment(0.5, 1.0))),
      child: Stack(children: <Widget>[
        Positioned(
          child: CircleWithImage(Assets.baseballGlove),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        Positioned.fill(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                child: Image(
                  image: AssetImage(Assets.baseballGlove),
                  fit: BoxFit.fitHeight,
                ),
                height: IMAGE_SIZE,
                width: IMAGE_SIZE,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Scout on the go, anywhere',
                  style: Theme.of(context)
                      .textTheme
                      .display1
                      .copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        )
      ], alignment: FractionalOffset.center),
    );
  }
}
