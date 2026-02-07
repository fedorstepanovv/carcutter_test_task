import 'package:carcutter_test/core/theme/app_theme.dart';
import 'package:carcutter_test/features/app/router/router.dart';
import 'package:flutter/material.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: AppTheme.lightTheme,
    );
  }
}
