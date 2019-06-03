import 'package:flutter/material.dart';

Function transformRouter(Widget widget) => (BuildContext context) => widget;
void goTo(String path, BuildContext context) => Navigator.pushNamed(context, path);