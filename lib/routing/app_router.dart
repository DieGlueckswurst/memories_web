import 'package:flutter/material.dart';
import 'package:memories_web/routing/views.dart';
import 'package:memories_web/ui/views/agb/agb_view.dart';
import 'package:memories_web/ui/views/datenschutz/datenschutz_view.dart';
import 'package:memories_web/ui/views/impressum/impressum_view.dart';

import '../ui/views/home/home_view.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Views.home:
        return CustomPageRoute(
          builder: (context) => const HomeView(),
          settings: const RouteSettings(
            name: Views.home,
          ),
        );

      case Views.agb:
        return CustomPageRoute(
          builder: (context) => const AGBView(),
          settings: const RouteSettings(
            name: Views.agb,
          ),
        );

      case Views.datenschutz:
        return CustomPageRoute(
          builder: (context) => const DatenschutzView(),
          settings: const RouteSettings(
            name: Views.datenschutz,
          ),
        );

      case Views.impressum:
        return CustomPageRoute(
          builder: (context) => const ImpressumView(),
          settings: const RouteSettings(
            name: Views.impressum,
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
              ),
            ),
          ),
        );
    }
  }
}

class CustomPageRoute extends MaterialPageRoute {
  CustomPageRoute({
    builder,
    settings,
  }) : super(
          builder: builder,
          settings: settings,
        );

  @override
  Duration get transitionDuration => const Duration(milliseconds: 0);
}
