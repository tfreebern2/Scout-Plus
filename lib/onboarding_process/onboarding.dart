import 'package:flutter/material.dart';
import 'package:scout_plus/custom_widgets/dots_indicator.dart';
import 'package:scout_plus/onboarding_process/page1.dart';
import 'package:scout_plus/onboarding_process/page2.dart';
import 'package:scout_plus/onboarding_process/page3.dart';
import '../utils/strings.dart' as string;

class Onboarding extends StatefulWidget {
  Onboarding({Key key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final _controller = PageController();
  final List<Widget> _pages = [Page1(), Page2(), Page3()];
  int page = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isDone = page == _pages.length - 1;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: PageView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              controller: _controller,
              itemCount: _pages.length,
              itemBuilder: (BuildContext context, int index) {
                return _pages[index % _pages.length];
              },
              onPageChanged: (int p) {
                setState(() {
                  page = p;
                });
              },
            ),
          ),
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: SafeArea(
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                primary: false,
                title: Text('Scout Plus'),
                actions: <Widget>[
                  FlatButton(
                    child: Text(isDone ? 'DONE' : 'NEXT', style: TextStyle(color: Colors.white),),
                    onPressed: isDone ? (){
                      Navigator.pop(context);
                    } : (){
                      _controller.animateToPage(page + 1, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
                    },
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10.0,
            left: 0.0,
            right: 0.0,
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DotsIndicator(
                      controller: _controller,
                      itemCount: _pages.length,
                      onPageSelected: (int page) {
                        _controller.animateToPage(page,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease);
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        width: 150.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Colors.blue[600],
                                Colors.blue[700],
                                Colors.blue[800],
//                                Colors.black54,
//                                Colors.black87,
//                                Colors.black
                              ],
                              begin: Alignment(0.5, -1.0),
                              end: Alignment(0.5, 1.0)),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Material(
                          child: MaterialButton(
                            child: Text(
                              'I\'M NEW',
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  .copyWith(color: Colors.white),
                            ),
                            onPressed: () {},
                            highlightColor: Colors.blue.withOpacity(0.5),
                            splashColor: Colors.blue.withOpacity(0.5),
                          ),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      Container(
                        width: 150.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(color: Colors.white, width: 1.0),
                            color: Colors.transparent),
                        child: Material(
                          child: MaterialButton(
                            child: Text(
                              'LOG IN',
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  .copyWith(color: Colors.white),
                            ),
                            onPressed: () {},
                            highlightColor: Colors.white30,
                            splashColor: Colors.white30,
                          ),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildContents(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 100.0,
        ),
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
                      child: _selected(context)),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                        onTap: () {
                          setState(() {});
                        },
                        child: _unselected(context))),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                        onTap: () {
                          setState(() {});
                        },
                        child: _unselected(context)))
              ],
            ),
          ],
        ),
      ],
    );
  }

  void nextScreen() {}

  Widget _selected(BuildContext context) {
    return Container(
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: Icon(Icons.navigate_next, color: Colors.blue[800], size: 36.0),
    );
  }

  Widget _unselected(BuildContext context) {
    return Opacity(
      opacity: 0.5,
      child: Container(
        width: 15.0,
        height: 15.0,
        decoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
      ),
    );
  }
}
