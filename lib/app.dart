import 'package:flutter/material.dart';
import 'package:rise/core/theme/app_colors.dart';
import 'package:rise/features/auth/presentations/views/splash_screen.dart';

class RiseApp extends StatelessWidget {
  const RiseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen(), theme: ThemeData(scaffoldBackgroundColor: AppColors.bgColor));
  }
}
