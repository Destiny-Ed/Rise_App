import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:rise/core/theme/app_colors.dart';
import 'package:rise/features/auth/presentations/views/splash_screen.dart';
import 'package:rise/features/leaderboard/presentation/providers/leaderboard_provider.dart';
import 'package:rise/features/profile/presentation/providers/profile_provider.dart';

class RiseApp extends StatelessWidget {
  const RiseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LeaderboardProvider()),
        ChangeNotifierProvider(create: (context) => ProfileProvider()),
      ],
      child: MaterialApp(
        home: SplashScreen(),
        theme: ThemeData(scaffoldBackgroundColor: AppColors.bgColor, fontFamily: GoogleFonts.aBeeZee().fontFamily),
      ),
    );
  }
}
