import 'package:flutter/material.dart';
import 'dart:async';

class animation  extends StatefulWidget {
  final Widget child;
  final int delay;
  const animation({ required this.child , required this.delay});

  @override
  _animationState createState() => _animationState();
}

class _animationState extends State<animation> 
with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<Offset>  _animOffset;
  @override
  void initState(){
    super.initState();
     _controller = AnimationController(
       vsync: this,
       duration : Duration(milliseconds:800 ),
      );
      final Curve = CurvedAnimation(parent: _controller, curve: Curves.decelerate,
      );
      _animOffset=Tween<Offset>(
        begin:Offset(0.0 , 0.35),
        end:Offset.zero,
      ).animate(Curve);
      Timer(Duration(milliseconds:widget.delay),() {
        _controller.forward();
      }) ;  
  }
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _controller,
      child: SlideTransition(
        position:_animOffset ,
        child: widget.child,
      ),
    );
  }
}