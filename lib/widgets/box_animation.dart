import 'package:flutter/material.dart';

class BoxAnimation extends StatefulWidget {
  const BoxAnimation({
    Key? key,
    this.height = 300,
    this.width = 250,
    required this.widget,
  }) : super(key: key);
  final double? width;
  final double? height;
  final Widget widget;

  @override
  BoxAnimationState createState() => BoxAnimationState();
}

class BoxAnimationState extends State<BoxAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true); // Repeat the animation loop
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final value = _controller.value;
        return Transform.translate(
          offset: Offset(0, 2 * value), // Move the container up and down
          child: widget.widget,
        );
      },
    );
  }
}
