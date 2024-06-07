import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sharedexperiences/app.dart';
import 'package:sharedexperiences/src/core/base_app.dart';
import 'package:sharedexperiences/src/di/di.dart';

//TODO: Comando para crear las clases en tiempo de ejecución y poder correr la app
// flutter packages pub run build_runner build --delete-conflicting-outputs
// flutter packages pub run build_runner watch //Crea las clases de chopper

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
