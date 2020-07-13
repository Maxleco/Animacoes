import 'package:flutter/material.dart';

class AnimacaoTween extends StatefulWidget {
  @override
  _AnimacaoTweenState createState() => _AnimacaoTweenState();
}

class _AnimacaoTweenState extends State<AnimacaoTween> {
  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: TweenAnimationBuilder(
    //     duration: Duration(milliseconds: 2000),
    //     tween: Tween<double>(begin: 0, end: 6.28),
    //     builder: (context, angulo, widget) {
    //       return Transform.rotate(
    //         angle: angulo,
    //         child: Image.asset("images/logo.png"),
    //       );
    //     },
    //   ),
    // );
    // return Center(
    //   child: TweenAnimationBuilder(
    //     duration: Duration(milliseconds: 2000),
    //     tween: Tween<double>(begin: 0.25, end: 1),
    //     builder: (context, scale, widget) {
    //       return Transform.scale(
    //         scale: scale,
    //         child: Image.asset("images/logo.png"),
    //       );
    //     },
    //   ),
    // );
    return Center(
      child: TweenAnimationBuilder(
        duration: Duration(milliseconds: 2000),
        tween: ColorTween(begin: Colors.white, end: Colors.deepOrange),
        child: Image.asset("images/estrelas.jpg"),
        builder: (context, color, widget) {
          return ColorFiltered(
            colorFilter: ColorFilter.mode(color, BlendMode.overlay),
            child: widget,
          );
        },
      ),
    );
  }
}
