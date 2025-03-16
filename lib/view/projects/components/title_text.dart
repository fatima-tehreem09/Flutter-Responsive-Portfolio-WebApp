import 'package:flutter/material.dart';
import 'package:flutter_portfolio/const/colors.dart';
import 'package:flutter_portfolio/widgets/alexendaria_text.dart';

import '../../../view model/responsive.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.prefix, required this.title});

  final String prefix;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShaderMask(
          shaderCallback: (bounds) {
            return const LinearGradient(
              end: Alignment.centerRight,
              begin: Alignment.centerLeft,
              colors: [
                AppColors.gOrange1,
                AppColors.gOrange2,
              ],
            ).createShader(bounds);
          },
          child: OpenSansText(
            title,
            size: !Responsive.isDesktop(context)
                ? Responsive.isLargeMobile(context)
                    ? 20
                    : 30
                : 50,
          ),
        )
      ],
    );
  }
}
