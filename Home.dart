import 'package:flutter/material.dart';

import 'ProviderApp.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    final main = ProviderApp.of(context);

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text("Home Page"),
            RaisedButton(
                onPressed: () => main.alterarView(),
                child: Text("Clique para outra página")
            )
          ],
        ),
      ),
    );
  }
}
