import 'package:flutter/material.dart';
import 'package:flutter_portfolio/const/colors.dart';
import 'package:flutter_portfolio/widgets/alexendaria_text.dart';

class AnimatedSubtitleText extends StatelessWidget {
  final double start;
  final double end;
  final String text;
  final bool gradient;
  const AnimatedSubtitleText({
    super.key,
    required this.start,
    required this.end,
    required this.text,
    this.gradient = false,
  });
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return OpenSansText(
          text,
          fontWeight: FontWeight.w900,
          color: AppColors.secondaryOrange,
        );
      },
    );
  }
}
