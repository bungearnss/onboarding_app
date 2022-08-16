import 'package:flutter/material.dart';
import '../utils/app_color.dart';

class SkipBtn extends StatelessWidget {
  final Size size;
  final TextTheme textTheme;
  final VoidCallback onPressed;

  SkipBtn({
    required this.size,
    required this.textTheme,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 60),
      width: size.width / 1.5,
      height: size.height / 13,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.btnBorderColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: onPressed,
        splashColor: AppColors.btnBorderColor,
        child: Center(
          child: Text(
            "Skip",
            style: textTheme.headline3,
          ),
        ),
      ),
    );
  }
}
