import 'package:flutter/material.dart';

import '../../../const/colors.dart';
import '../../../widgets/alexendaria_text.dart';

class SkillsBox extends StatelessWidget {
  const SkillsBox({
    super.key,
    required this.skillName,
  });
  final String skillName;

  @override
  Widget build(BuildContext context) {
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
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.all(1),
        child: OpenSansText(
          skillName,
          size: 16,
        ),
      ),
    );
  }
}
