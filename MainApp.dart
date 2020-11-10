
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home.dart';
import 'Other.dart';
import 'ProviderApp.dart';


class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  Widget _widget;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _widget = ProviderApp(
      child: Home(),
      callback: (){
        _goToOutra();
      },
    );
  }

  void _goToOutra(){
    setState(() {
      _widget = ProviderApp(
        child: Other(),
        callback: (){
          _goToHome();
        },
      );
    });
  }

  void _goToHome(){
    setState(() {
      _widget = ProviderApp(
        child: Home(),
        callback: (){
          _goToOutra();
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _widget,
      ),
    );
  }
}

