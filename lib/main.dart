import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sharedexperiences/app.dart';
import 'package:sharedexperiences/src/core/base_app.dart';
import 'package:sharedexperiences/src/di/di.dart';

import 'flavors.dart';

void main() async {
  F.appFlavor = Flavor.dev;

  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );

  runApp(setupBaseApp(MyApp()));
}
