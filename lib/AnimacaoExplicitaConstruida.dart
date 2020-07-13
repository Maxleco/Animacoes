import 'package:flutter/material.dart';

class AnimacaoExplicitaConstruida extends StatefulWidget {
  @override
  _AnimacaoExplicitaConstruidaState createState() =>
      _AnimacaoExplicitaConstruidaState();
}

class _AnimacaoExplicitaConstruidaState
    extends State<AnimacaoExplicitaConstruida>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  AnimationStatus _animationStatus;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 5),
      vsync: this,
    )..addStatusListener((status) {
      _animationStatus = status;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.stop();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            width: 300,
            height: 400,
            child: RotationTransition(
              alignment: Alignment.center,
              child: Image.asset("images/logo.png"),
              turns: _animationController,
            ),
          ),
          RaisedButton(
            child: Text("Pressione"),
            onPressed: () {
              if(_animationController.isAnimating){
                _animationController.stop();
              }
              else{
                _animationController.repeat();
              }
            },
          ),
          RaisedButton(
            child: Text("Inverte Sentido"),
            onPressed: () {
              if(_animationStatus == AnimationStatus.dismissed){
                _animationController.forward();
              }
              else{
                _animationController.reverse();
              }
            },
          ),
        ],
      ),
    );
  }
}
