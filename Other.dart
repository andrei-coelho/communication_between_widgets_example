import 'package:flutter/material.dart';
import 'package:navigator_test/Inner.dart';

class Other extends StatefulWidget {
  @override
  _OtherState createState() => _OtherState();
}

class _OtherState extends State<Other> {

  @override
  Widget build(BuildContext context) {
    return Inner();
  }
}
