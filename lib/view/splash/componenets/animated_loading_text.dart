import 'package:flutter/material.dart';
import 'package:flutter_portfolio/const/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedLoadingText extends StatelessWidget {
  const AnimatedLoadingText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: defaultPadding * 5,
      child: TweenAnimationBuilder(
        duration: const Duration(seconds: 2),
        builder: (context, value, child) => Column(
          children: [
            LinearProgressIndicator(
              backgroundColor: AppColors.grey,
              color: AppColors.secondaryOrange,
              value: value,
            ),
            const SizedBox(height: 20),
            Text(
              '${(value * 100).toInt()}%',
              style: GoogleFonts.openSans(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                      color: AppColors.gOrange1,
                      blurRadius: 10,
                      offset: Offset(2, 2)),
                  Shadow(
                      color: AppColors.gOrange2,
                      blurRadius: 10,
                      offset: Offset(-2, -2)),
                ],
              ),
            )
          ],
        ),
        tween: Tween(begin: 0.0, end: 1.0),
      ),
    );
  }
}
