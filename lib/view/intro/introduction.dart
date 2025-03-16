import 'package:flutter/material.dart';
import 'package:flutter_portfolio/extensions/size_extension.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/intro/components/intro_body.dart';
import 'package:flutter_portfolio/view/intro/components/side_menu_button.dart';
import 'package:flutter_portfolio/view/intro/components/social_media_list.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Row(
        children: [
          (width * 0.01).widthBox,
          if (!Responsive.isLargeMobile(context))
            MenuButton(
              onTap: () => Scaffold.of(context).openDrawer(),
            ),
          (width * 0.02).widthBox,
          if (!Responsive.isLargeMobile(context)) const SocialMediaIconList(),
          (width * 0.07).widthBox,
          const Expanded(
            child: IntroBody(),
          ),
        ],
      ),
    );
  }
}
