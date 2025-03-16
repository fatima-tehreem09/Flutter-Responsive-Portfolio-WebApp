import 'package:flutter/material.dart';

import '../const/colors.dart';
import '../view model/responsive.dart';

class DartBuddy extends StatelessWidget {
  const DartBuddy({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding / 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          colors: [AppColors.gOrange1, AppColors.gOrange2],
        ),
        boxShadow: const [
          BoxShadow(
            color: AppColors.gOrange1,
            offset: Offset(-2, 0),
            blurRadius: 20,
          ),
          BoxShadow(
            color: AppColors.gOrange2,
            offset: Offset(2, 0),
            blurRadius: 20,
          ),
        ],
      ),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Image.asset(
          'assets/images/image.png',
          height: Responsive.isLargeMobile(context)
              ? MediaQuery.sizeOf(context).width * 0.2
              : Responsive.isTablet(context)
                  ? MediaQuery.sizeOf(context).width * 0.14
                  : 200,
          width: Responsive.isLargeMobile(context)
              ? MediaQuery.sizeOf(context).width * 0.2
              : Responsive.isTablet(context)
                  ? MediaQuery.sizeOf(context).width * 0.14
                  : 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
