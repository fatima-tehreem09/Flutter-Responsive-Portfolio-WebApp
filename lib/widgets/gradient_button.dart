import 'package:flutter/material.dart';
import 'package:flutter_portfolio/const/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    super.key,
    required this.child,
    required this.link,
    this.padding = const EdgeInsets.symmetric(
        vertical: defaultPadding / 1.5, horizontal: defaultPadding * 2),
  });

  final Widget child;
  final String link;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchUrl(Uri.parse(link));
      },
      child: Container(
        alignment: Alignment.center,
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: AppColors.gOrange1,
                offset: Offset(0, -1),
                blurRadius: 5),
            BoxShadow(
              color: AppColors.gOrange2,
              offset: Offset(0, 1),
              blurRadius: 5,
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.gOrange1,
              AppColors.gOrange2,
            ],
          ),
        ),
        child: child,
      ),
    );
  }
}
