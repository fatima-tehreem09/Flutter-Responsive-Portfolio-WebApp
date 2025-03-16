import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/dart_buddy.dart';

import '../../../const/colors.dart';
import '../../../view model/responsive.dart';
import '../../../widgets/box_animation.dart';
import 'combine_subtitle.dart';
import 'description_text.dart';
import 'download_button.dart';
import 'headline_text.dart';

class IntroBody extends StatelessWidget {
  const IntroBody({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Row(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!Responsive.isDesktop(context))
                  SizedBox(
                    height: size.height * 0.06,
                  ),
                if (!Responsive.isDesktop(context))
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.23,
                      ),
                      const BoxAnimation(
                        width: 150,
                        height: 200,
                        widget: DartBuddy(),
                      ),
                    ],
                  ),
                if (!Responsive.isDesktop(context))
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                const Responsive(
                    desktop: MyPortfolioText(start: 40, end: 50),
                    largeMobile: MyPortfolioText(start: 40, end: 35),
                    mobile: MyPortfolioText(start: 35, end: 30),
                    tablet: MyPortfolioText(start: 50, end: 40)),
                if (kIsWeb && Responsive.isLargeMobile(context))
                  Container(
                    height: defaultPadding,
                    color: Colors.transparent,
                  ),
                const CombineSubtitleText(),
                const SizedBox(height: defaultPadding / 2),
                const Responsive(
                  desktop: AnimatedDescriptionText(start: 14, end: 15),
                  largeMobile: AnimatedDescriptionText(start: 10, end: 7),
                  mobile: AnimatedDescriptionText(start: 10, end: 7),
                  tablet: AnimatedDescriptionText(start: 10, end: 7),
                ),
                const SizedBox(
                  height: defaultPadding * 2,
                ),
                const DownloadButton(),
              ],
            ),
          ),
        ),
        if (Responsive.isDesktop(context)) ...[
          const Spacer(),
          const BoxAnimation(
            widget: DartBuddy(),
          ),
          const Spacer()
        ],
      ],
    );
  }
}
