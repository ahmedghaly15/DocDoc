import 'package:docdoc/bloc_observer.dart';
import 'package:docdoc/service_locator.dart';
import 'package:docdoc/src/docdoc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ServiceLocator().init();

  // To fix texts being hidden bug in release mode
  await ScreenUtil.ensureScreenSize();

  Bloc.observer = MyBlocObserver();

  runApp(const DocdocApp());
}
