import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/alexendaria_text.dart';
import 'package:flutter_portfolio/widgets/gradient_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../const/colors.dart';

class ConnectButton extends StatelessWidget {
  const ConnectButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientButton(
      link: 'https://wa.me/03024654653',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            FontAwesomeIcons.whatsapp,
            color: Color(0xff25D366),
            size: 15,
          ),
          const SizedBox(width: defaultPadding / 4),
          OpenSansText(
            'Whatsapp',
          ),
        ],
      ),
    );
  }
}
