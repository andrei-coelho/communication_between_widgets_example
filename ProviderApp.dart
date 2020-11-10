import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProviderApp extends InheritedWidget {

  final Widget child;
  final Function callback;

  ProviderApp({this.child, this.callback});

  static ProviderApp of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ProviderApp>();

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  void alterarView(){
    callback();
  }

}