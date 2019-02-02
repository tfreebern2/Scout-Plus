import 'package:flutter/material.dart';
import 'package:scout_plus/widgets/platform_app_bar.dart';
import 'package:scout_plus/widgets/platform_scaffold.dart';

class Welcome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text('Welcome to Scout Plus'),
        actions: <Widget>[],
      ),
      body: buildContents(context),
    );
  }

  Widget buildContents(BuildContext context) {
    return Container(child: Column(children: <Widget>[],),);
  }
}
