import 'package:flutter/material.dart';
import 'package:flutter_portfolio/const/colors.dart';

class MenuButton extends StatelessWidget {
  final VoidCallback? onTap;
  const MenuButton({super.key, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        TweenAnimationBuilder(
          tween: Tween(begin: 0.0, end: 1.0),
          duration: const Duration(seconds: 1),
          builder: (context, value, child) {
            return InkWell(
              onTap: onTap,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: defaultPadding * 2.0 * value,
                width: defaultPadding * 2.0 * value,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.primary,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.gOrange1.withValues(alpha: .5),
                      offset: const Offset(1, 1),
                    ),
                    BoxShadow(
                      color: AppColors.gOrange2.withValues(alpha: .5),
                      offset: const Offset(-1, -1),
                    ),
                  ],
                ),
                child: Center(
                  child: ShaderMask(
                    shaderCallback: (bounds) {
                      return LinearGradient(
                        colors: [
                          AppColors.gOrange1,
                          AppColors.gOrange2,
                        ],
                      ).createShader(bounds);
                    },
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: defaultPadding * 1.2 * value,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        const Spacer(
          flex: 5,
        )
      ],
    );
  }
}
