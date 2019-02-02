import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scout_plus/widgets/platform_widget.dart';

class PlatformButton extends PlatformWidget<CupertinoButton, FlatButton> {
  PlatformButton({Key key, this.child, this.color, this.onPressed, this.padding}) : super(key: key);
  final Widget child;
  final Color color;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry padding;

  @override
  CupertinoButton buildCupertinoWidget(BuildContext context) {
    return CupertinoButton(
      child: child,
      color: color,
      pressedOpacity: 0.5,
      onPressed: onPressed,
      padding: padding,
    );
  }

  @override
  FlatButton buildMaterialWidget(BuildContext context) {
    return FlatButton(
      child: child,
      color: color,
      onPressed: onPressed,
    );
  }
}