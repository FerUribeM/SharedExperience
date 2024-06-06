import 'package:flutter/material.dart';
import 'package:sharedexperiences/src/core/util/util/router_settings.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutersSettings.initialRoute,
      routes: RoutersSettings.customRoutes,
    );
  }
}
