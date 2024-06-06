import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sharedexperiences/src/core/base_app.dart';
import 'package:sharedexperiences/src/di/di.dart';
import 'app.dart';
import 'flavors.dart';

void main() async {
  F.appFlavor = Flavor.prod;
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );

  runApp(setupBaseApp(MyApp()));
}
