import 'package:flutter/material.dart';
import 'package:flutter_portfolio/const/colors.dart';
import 'package:flutter_portfolio/extensions/size_extension.dart';
import 'package:flutter_portfolio/model/skill_model.dart';
import 'package:flutter_portfolio/widgets/alexendaria_text.dart';
import 'package:flutter_svg/svg.dart';

class MySkill extends StatelessWidget {
  const MySkill({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        ...List.generate(
          skillList.length,
          (index) {
            final skill = skillList[index];
            return Container(
              margin: const EdgeInsets.only(right: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    AppColors.gOrange1,
                    AppColors.gOrange2,
                  ],
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(10),
                color: AppColors.primary,
                margin: const EdgeInsets.all(1),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (skill.image.endsWith('.svg'))
                      SvgPicture.asset(
                        skill.image,
                        width: 13,
                        fit: BoxFit.scaleDown,
                      )
                    else
                      Image.asset(
                        skill.image,
                        width: 13,
                        fit: BoxFit.scaleDown,
                      ),
                    6.widthBox,
                    OpenSansText(
                      skill.name,
                      size: 18,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
