import 'package:flutter/material.dart';

class MaisSobreAnimacao extends StatefulWidget {
  @override
  _MaisSobreAnimacaoState createState() => _MaisSobreAnimacaoState();
}

class _MaisSobreAnimacaoState extends State<MaisSobreAnimacao>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(60, 60),
    ).animate(_animationController);
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.stop();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _animationController.repeat();

    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: AnimatedBuilder(
        animation: _animation,
        child: Stack(
          children: <Widget>[
            Positioned(
              width: 180,
              height: 180,
              left: 0,
              top: 0,
              child: Image.asset("images/logo.png"),
            ),
          ],
        ),
        builder: (context, widget) {
          // return Transform.rotate(
          //   angle: _animation.value,
          //   child: widget,
          // );

          // return Transform.scale(
          //   scale: _animation.value,
          //   child: widget,
          // );

          return Transform.translate(
            offset: _animation.value,
            child: widget,
          );
        },
      ),
    );
  }
}
