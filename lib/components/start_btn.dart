import 'package:flutter/material.dart';
import '../utils/app_color.dart';

class StartBtn extends StatelessWidget {
  final Size size;
  final TextTheme textTheme;

  StartBtn({required this.size, required this.textTheme});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(top: 60),
        width: size.width / 1.5,
        height: size.height / 13,
        decoration: BoxDecoration(
          color: AppColors.btnColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            "Get Start Now",
            style: textTheme.headline4,
          ),
        ),
      ),
    );
  }
}
