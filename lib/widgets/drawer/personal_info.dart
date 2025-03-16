import 'package:flutter/material.dart';
import 'package:flutter_portfolio/extensions/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../const/colors.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        (defaultPadding / 2).heightBox,
        const AreaInfoText(
          title: 'Contact',
          text: '03024654653',
          icon: "assets/icons/phone.svg",
        ),
        const AreaInfoText(
          title: 'Email',
          text: 'tehreem.hashmi007@gmail.com',
          icon: "assets/icons/email.svg",
        ),
        const AreaInfoText(
          title: 'LinkedIn',
          text: '@tehreemhashmi007',
          icon: "assets/icons/linkedin.svg",
        ),
        const AreaInfoText(
          title: 'Github',
          text: '@fatima-tehreem09',
          icon: "assets/icons/github.svg",
        ),
        defaultPadding.heightBox,
        const Divider(
          color: AppColors.gOrange1,
          endIndent: 100,
          indent: 100,
        ),
        Text(
          'Skills',
          style: GoogleFonts.openSans(
            fontSize: 24,
            color: AppColors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
        defaultPadding.heightBox,
      ],
    );
  }
}
