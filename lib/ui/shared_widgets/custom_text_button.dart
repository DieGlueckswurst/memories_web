import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/text_styles.dart';

class CustomTextBackButton extends StatefulWidget {
  const CustomTextBackButton({
    Key? key,
  }) : super(key: key);

  @override
  _CustomTextBackButtonState createState() => _CustomTextBackButtonState();
}

class _CustomTextBackButtonState extends State<CustomTextBackButton> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Listener(
        onPointerDown: (PointerDownEvent event) {
          _onTapDown();
        },
        onPointerUp: (PointerUpEvent event) {
          _onTapCancel();
        },
        child: GestureDetector(
          onTap: () {
            Navigator.pop(
              context,
            );
          },
          onTapCancel: () {
            _onTapCancel();
          },
          child: Container(
            color: AppColors.transparent,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 20,
                right: 20,
              ),
              child: Text(
                'Zurück',
                style: AppTextStyles.montserratH6SemiBold.copyWith(
                  color: isTapped
                      ? AppColors.primary.withOpacity(0.4)
                      : AppColors.primary,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _onTapDown() {
    setState(() {
      isTapped = true;
    });
  }

  _onTapCancel() {
    setState(() {
      isTapped = false;
    });
  }
}
