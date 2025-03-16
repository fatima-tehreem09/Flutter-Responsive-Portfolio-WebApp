import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/alexendaria_text.dart';
import 'package:flutter_portfolio/widgets/gradient_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../res/constants.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});
  @override
  Widget build(BuildContext context) {
    return GradientButton(
      link:
          'https://docs.google.com/document/d/1KzVIoSjTlk-q_1c9SPFD8LCbjVMkcCY39seoOW0EP30/edit?usp=drive_link',
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OpenSansText(
            'Download CV',
          ),
          const SizedBox(
            width: defaultPadding / 3,
          ),
          const Icon(
            FontAwesomeIcons.download,
            color: Colors.white,
            size: 15,
          )
        ],
      ),
    );
  }
}
