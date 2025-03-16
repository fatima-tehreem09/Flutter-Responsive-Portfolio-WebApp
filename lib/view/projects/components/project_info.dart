import 'package:flutter/material.dart';
import 'package:flutter_portfolio/const/colors.dart';
import 'package:flutter_portfolio/view/projects/components/project_detail.dart';
import 'package:get/get.dart';

import '../../../view model/getx_controllers/projects_controller.dart';

class ProjectStack extends StatefulWidget {
  ProjectStack({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State<ProjectStack> createState() => _ProjectStackState();
}

class _ProjectStackState extends State<ProjectStack> {
  final controller = Get.put(ProjectController());

  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: AnimatedContainer(
        padding: const EdgeInsets.only(
            left: defaultPadding, right: defaultPadding, top: defaultPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.secondaryGrey,
        ),
        duration: const Duration(milliseconds: 500),
        child: ProjectDetail(
          index: widget.index,
        ),
      ),
    );
  }
}
