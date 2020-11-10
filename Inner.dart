import 'package:flutter/material.dart';

import 'ProviderApp.dart';

class Inner extends StatefulWidget {
  @override
  _InnerState createState() => _InnerState();
}

class _InnerState extends State<Inner> {

  @override
  Widget build(BuildContext context) {

    final main = ProviderApp.of(context);

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text("Outra pagina"),
            RaisedButton(
                onPressed: () => main.alterarView(),
                child: Text("Clique para voltar")
            )
          ],
        ),
      ),
    );
  }
}
