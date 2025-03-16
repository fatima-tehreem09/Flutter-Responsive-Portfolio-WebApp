import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/projects/components/project_info.dart';
import 'package:get/get.dart';

import '../../../const/colors.dart';
import '../../../model/project_model.dart';
import '../../../view model/getx_controllers/projects_controller.dart';

class ProjectGrid extends StatelessWidget {
  ProjectGrid({
    super.key,
    this.crossAxisCount = 3,
    this.ratio = 1.3,
  });

  final int crossAxisCount;
  final double ratio;

  final controller = Get.put(ProjectController());
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      itemCount: projectList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount, childAspectRatio: ratio),
      itemBuilder: (context, index) {
        return Obx(
          () => AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            margin: const EdgeInsets.symmetric(
                vertical: defaultPadding, horizontal: defaultPadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(
                colors: [
                  AppColors.gOrange1,
                  AppColors.gOrange2,
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.gOrange1,
                  offset: const Offset(-2, 0),
                  blurRadius: controller.hovers[index] ? 20 : 10,
                ),
                BoxShadow(
                  color: AppColors.gOrange2,
                  offset: const Offset(2, 0),
                  blurRadius: controller.hovers[index] ? 20 : 10,
                ),
              ],
            ),
            child: ProjectStack(index: index),
          ),
        );
      },
    );
  }
}
