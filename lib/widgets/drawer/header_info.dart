import 'package:flutter/material.dart';
import 'package:flutter_portfolio/const/colors.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({
    super.key,
    required this.title,
    required this.text,
    required this.icon,
  });

  final String title;
  final String text;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
          color: AppColors.secondaryOrange,
          width: 1,
        ),
      ),
      title: Text(
        title,
        style: GoogleFonts.openSans(
          color: AppColors.grey,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
      subtitle: Text(
        text,
        style: GoogleFonts.openSans(
          color: AppColors.grey,
          fontWeight: FontWeight.w300,
          fontSize: 12,
        ),
      ),
      tileColor: AppColors.secondaryOrange,
      leading: SvgPicture.asset(
        icon,
        width: 15.333,
        fit: BoxFit.scaleDown,
        colorFilter: ColorFilter.mode(
          AppColors.secondaryOrange,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
