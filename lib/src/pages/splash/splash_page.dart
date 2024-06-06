import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sharedexperiences/src/pages/welcome/welcome_page.dart';

import '../../core/manager_router_images.dart';

///Splash page this is first screen in app
class SplashPage extends StatefulWidget {
  ///constructor in splash page
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), setupPage);
    super.initState();
  }

  void setupPage() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => WelcomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: Colors.transparent,
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            ManagerRouterImages.splashBackground,
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: Container(
              color: Colors.transparent,
              width: MediaQuery.of(context).size.width * 0.7,
              child: Image.asset(ManagerRouterImages.logoTravel)),
        )
      ],
    ));
  }
}
