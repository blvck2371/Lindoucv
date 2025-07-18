import 'package:flutter/material.dart';
import 'dart:async';

class DelayedAnimation extends StatefulWidget {
  final Widget child;
  final int delay;
  final double startOffsetX;
  final double startOffsetY;
  const DelayedAnimation({
    required this.delay,
    required this.child,
    required this.startOffsetX,
    required this.startOffsetY,
    Key? key,
  }) : super(key: key);

  @override
  _DelayedAnimationState createState() => _DelayedAnimationState();
}

class _DelayedAnimationState extends State<DelayedAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animOffset;
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );

    final curve = CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate,
    );

    _animOffset = Tween<Offset>(
      begin: Offset(widget.startOffsetX, widget.startOffsetY),
      end: Offset.zero,
    ).animate(curve);

    _timer = Timer(Duration(milliseconds: widget.delay), () {
      if (mounted) {
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _controller,
      child: SlideTransition(position: _animOffset, child: widget.child),
    );
  }
}
