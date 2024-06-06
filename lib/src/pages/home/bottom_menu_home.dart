import 'package:flutter/material.dart';
import 'package:sharedexperiences/src/pages/home/base_menu_home.dart';

///Menu in home screen
class BottomMenuHome extends StatelessWidget {
  ///Constructor menu in home screen
  const BottomMenuHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: BaseMenuHome(),
    );
  }
}
