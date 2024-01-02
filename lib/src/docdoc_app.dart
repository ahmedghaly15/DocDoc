import 'package:docdoc/src/config/router/app_router.dart';
import 'package:docdoc/src/config/themes/app_theme.dart';
import 'package:docdoc/src/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocdocApp extends StatelessWidget {
  const DocdocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppStrings.appTitle,
        theme: AppTheme.light,
        onGenerateRoute: AppRouter.onGenerateRoute,
      ),
    );
  }
}
