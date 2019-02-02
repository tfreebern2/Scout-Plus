import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scout_plus/platform_widgets/platform_widget.dart';

class PlatformTextField extends PlatformWidget<CupertinoTextField, TextField> {
  final TextEditingController controller;
  final String hintText;
  final Widget icon;
  final Widget iconSuffix;
  final BoxDecoration boxDecoration;
  final TextInputType inputType;
  final ValueChanged<String> onChanged;

  PlatformTextField(
      {this.controller, this.hintText, this.icon, this.boxDecoration, this.iconSuffix, this.inputType, this.onChanged});

  @override
  TextField buildMaterialWidget(BuildContext context) {
    return new TextField(
      controller: controller,
      decoration: InputDecoration(hintText: hintText, icon: icon),
      keyboardType: inputType,
      onChanged: onChanged,
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
    );
  }
}