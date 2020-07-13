import 'package:flutter/material.dart';

class AnimacaoImplicita extends StatefulWidget {
  @override
  _AnimacaoImplicitaState createState() => _AnimacaoImplicitaState();
}

class _AnimacaoImplicitaState extends State<AnimacaoImplicita> {

  bool _status = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedContainer(
          duration: Duration(milliseconds: 750),
          curve: Curves.elasticInOut,
          padding: EdgeInsets.all(20),
          width: _status ? 200 : 300,
          height: _status ? 300 : 200,
          color: _status ? Colors.white : Colors.purpleAccent,
          child: Image.asset("images/logo.png"),
        ),
        RaisedButton(
          child: Text("Alterar"),
          onPressed: () {
            setState(() {
              _status = !_status;
            });
          },
        )
      ],
    );
  }
}
