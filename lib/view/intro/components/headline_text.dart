import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/alexendaria_text.dart';

class MyPortfolioText extends StatelessWidget {
  const MyPortfolioText({
    super.key,
    required this.start,
    required this.end,
  });

  final double start;
  final double end;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return TweenAnimationBuilder(
          tween: Tween(begin: start, end: end),
          duration: const Duration(milliseconds: 200),
          builder: (context, value, child) {
            return OpenSansText(
              'My Personal Portfolio',
              size: 18,
            );
          },
        );
      },
    );
  }
}
