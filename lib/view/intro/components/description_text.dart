import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/alexendaria_text.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText(
      {super.key, required this.start, required this.end});
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return OpenSansText(
          'Passionate about building intuitive and efficient mobile and web applications using Flutter and Dart.\nWith experience in Clean Architecture, state management (Riverpod, GetX), and REST APIs, I specialize in creating seamless user experiences. Always eager to learn, collaborate, and innovate.\nLet’s connect and build something impactful!',
          maxLines: 7,
        );
      },
    );
  }
}
