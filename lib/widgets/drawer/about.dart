import 'package:flutter/material.dart';
import 'package:flutter_portfolio/const/colors.dart';
import 'package:google_fonts/google_fonts.dart';

import 'drawer_image.dart';

class About extends StatelessWidget {
  const About({super.key});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: AppColors.primary,
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            DrawerImage(),
            const Spacer(),
            Text(
              'Tehreem Fatima',
              style: GoogleFonts.openSans(
                fontSize: 20,
                color: AppColors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: defaultPadding / 4,
            ),
            Text(
              'Flutter Developer\nWeb Apps | Firebase | Rest APIs',
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w200,
                height: 1.5,
                color: AppColors.grey,
              ),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
