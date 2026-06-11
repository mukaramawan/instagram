import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram/core/di/injection.dart';
import 'package:instagram/core/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp.router(
        routerConfig: getIt<GoRouter>(),
        theme: AppTheme.light(),
        darkTheme: AppTheme.dark(),
        locale: const Locale('en'),
        debugShowCheckedModeBanner: false,
        title: 'My App',
      ),
    );
  }
}
