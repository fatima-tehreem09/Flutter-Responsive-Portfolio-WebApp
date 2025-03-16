import 'package:flutter/material.dart';
import 'package:flutter_portfolio/const/colors.dart';
import 'package:flutter_portfolio/widgets/drawer/personal_info.dart';

import '../../../../res/constants.dart';
import 'about.dart';
import 'contact_icons.dart';
import 'my_skill.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.primary,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const About(),
            Container(
              color: AppColors.primary,
              child: const Padding(
                padding: EdgeInsets.all(defaultPadding / 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PersonalInfo(),
                    MySkill(),
                    // Knowledges(),

                    SizedBox(
                      height: defaultPadding,
                    ),
                    const Divider(
                      color: AppColors.gOrange1,
                      endIndent: 100,
                      indent: 100,
                    ),
                    ContactIcon(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
