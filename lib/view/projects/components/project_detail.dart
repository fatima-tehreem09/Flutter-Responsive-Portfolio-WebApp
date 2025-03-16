import 'package:flutter/material.dart';
import 'package:flutter_portfolio/const/colors.dart';
import 'package:flutter_portfolio/extensions/size_extension.dart';
import 'package:flutter_portfolio/view/projects/components/skills_box.dart';
import 'package:flutter_portfolio/widgets/alexendaria_text.dart';
import 'package:flutter_portfolio/widgets/hover_button.dart';

import '../../../model/project_model.dart';
import '../../../res/constants.dart';
import '../../../view model/responsive.dart';

class ProjectDetail extends StatelessWidget {
  const ProjectDetail({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: OpenSansText(
            projectList[index].name,
            maxLines: 1,
            color: AppColors.secondaryOrange,
            size: 18,
            textOverflow: TextOverflow.ellipsis,
          ),
        ),
        Responsive.isMobile(context)
            ? const SizedBox(
                height: defaultPadding / 2,
              )
            : const SizedBox(
                height: defaultPadding,
              ),
        OpenSansText(
          projectList[index].description,
          maxLines: size.width > 700 && size.width < 750
              ? 3
              : size.width < 470
                  ? 2
                  : size.width > 600 && size.width < 700
                      ? 6
                      : size.width > 900 && size.width < 1060
                          ? 6
                          : 4,
          textOverflow: TextOverflow.ellipsis,
        ),
        30.heightBox,
        Wrap(
          children: [
            ...List.generate(
              projectList[index].skills.length,
              (ctx) {
                final skill = projectList[index].skills[ctx];
                return SkillsBox(
                  skillName: skill,
                );
              },
            ),
          ],
        ),
        const Spacer(),
        HoverButton(
          text: "Read More",
          icon: Icons.read_more,
          onPressed: () => _showOverlay(context),
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
      ],
    );
  }

  void _showOverlay(BuildContext context) {
    final overlay = Overlay.of(context);
    final overlayEntry = OverlayEntry(
      builder: (context) => Center(
        child: Material(
          color: Colors.transparent,
          child: Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColors.secondaryGrey,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: AppColors.gOrange1,
                width: 2,
              ),
            ),
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: Text(
                'Hello, Overlay!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
    overlay.insert(overlayEntry);
  }
}
