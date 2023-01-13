import 'package:flutter/material.dart';
import 'package:memories_web/routing/app_router.dart';
import 'package:memories_web/shared_utils/color_service.dart';

import 'constants/app_colors.dart';
import 'constants/text_styles.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memories',
      theme: ThemeData(
        primarySwatch: ColorService.createMaterialColor(AppColors.primary),
        fontFamily: AppTextStyles.montserrat,
        brightness: Brightness.dark,
        hintColor: AppColors.primary.withOpacity(0.5),
        primaryColor: AppColors.primary,
        backgroundColor: AppColors.secondary,
        scaffoldBackgroundColor: AppColors.secondary,
      ),
      initialRoute: '/',
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
