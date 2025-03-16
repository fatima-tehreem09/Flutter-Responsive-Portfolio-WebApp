import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/colors.dart';

class OpenSansText extends Text {
  OpenSansText(
    super.data, {
    super.key,
    super.textAlign,
    super.maxLines,
    Color color = AppColors.grey,
    double size = 14.0,
    FontWeight fontWeight = FontWeight.w400,
    TextDecoration? decoration,
    TextOverflow? textOverflow,
  }) : super(
          textDirection: TextDirection.ltr,
          style: GoogleFonts.openSans(
            color: color,
            fontSize: size,
            decoration: decoration,
            decorationColor: color,
            fontWeight: fontWeight,
          ).copyWith(
            overflow: textOverflow,
          ),
        );
}
