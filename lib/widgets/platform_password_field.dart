import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scout_plus/widgets/platform_widget.dart';

class PlatformPasswordField extends PlatformWidget<CupertinoTextField, TextField> {
  final TextEditingController controller;
  final String hintText;
  final Widget icon;
  final Widget iconSuffix;
  final BoxDecoration boxDecoration;
  final TextInputType inputType;
  final ValueChanged<String> onChanged;
  final bool obscureText;

  PlatformPasswordField(
      {this.controller, this.hintText, this.icon, this.boxDecoration, this.iconSuffix, this.inputType, this.onChanged, this.obscureText});

  @override
  TextField buildMaterialWidget(BuildContext context) {
    return new TextField(
      controller: controller,
      decoration: InputDecoration(hintText: hintText, icon: icon),
      keyboardType: inputType,
      onChanged: onChanged,
      obscureText: true,
    );
  }

  @override
  CupertinoTextField buildCupertinoWidget(BuildContext context) {
    return new CupertinoTextField(
      controller: controller,
      placeholder: hintText,
      prefix: icon,
      suffix: iconSuffix,
      decoration: boxDecoration,
      keyboardType: inputType,
      onChanged: onChanged,
      obscureText: true,
    );
  }
}