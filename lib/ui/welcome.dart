import 'package:flutter/material.dart';
import '../utils/strings.dart' as string;

class Welcome extends StatefulWidget {
  Welcome({Key key}) : super(key: key);

  @override
  WelcomeState createState() {
    return new WelcomeState();
  }
}

class WelcomeState extends State<Welcome> {
  String _welcomeHeaderText;
  String _welcomeText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
                0.1,
                0.3,
                0.5,
                0.7,
                0.9,
                1.0
              ],
              colors: [
                Colors.blue[600],
                Colors.blue[700],
                Colors.blue[800],
                Colors.black54,
                Colors.black87,
                Colors.black
          ])),
      child: buildContents(context),
    );
  }

  Widget buildContents(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(height: 100.0,),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                string.header,
                style: TextStyle(color: Colors.white, fontSize: 32.0),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  string.subHeader,
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 80.0),
            Container(
              width: 300.0,
              height: 300.0,
              decoration: BoxDecoration(color: Colors.grey),
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        string.header = string.firstFeature;
                        string.subHeader = string.firstFeatureSub;
                      });
                    },
                    child: Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Icon(Icons.navigate_next,
                          color: Colors.blue[800], size: 36.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Icon(Icons.navigate_next,
                        color: Colors.blue[800], size: 36.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Icon(Icons.navigate_next,
                        color: Colors.blue[800], size: 36.0),
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
