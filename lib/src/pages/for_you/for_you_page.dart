import 'package:flutter/material.dart';
import 'package:sharedexperiences/src/pages/shared_home/btn_menu_drawer.dart';

/// For you page
class ForYouPage extends StatelessWidget {
  ///constructor empty
  const ForYouPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: const Center(
        child: BtnMenuDrawer(),
      ),
    );
  }
}
