import 'package:flutter/material.dart';
import 'package:memories_web/constants/app_colors.dart';
import 'package:memories_web/constants/text_styles.dart';

class ButtonWithRoundedCornerBorder extends StatelessWidget {
  final VoidCallback onTap;
  final String title;

  const ButtonWithRoundedCornerBorder({
    Key? key,
    required this.onTap,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 200,
          decoration: BoxDecoration(
            border: Border.all(
              width: 3,
              color: AppColors.secondary,
            ),
            borderRadius: BorderRadius.circular(
              15,
            ),
            color: AppColors.secondary,
          ),
          child: Padding(
            padding: const EdgeInsets.all(
              15,
            ),
            child: Center(
              child: Text(
                title,
                style: AppTextStyles.montserratH5SemiBold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
