import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sharedexperiences/src/di/di.dart';
import 'package:sharedexperiences/src/provider/home_provider.dart';

MultiProvider setupBaseApp(Widget app) {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => getIt<HomeProvider>()),
    ],
    child: app,
  );
}
