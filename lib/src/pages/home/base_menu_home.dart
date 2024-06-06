import 'package:flutter/material.dart';
import 'package:sharedexperiences/src/pages/home/options_menu_home.dart';

///Background in menu home
class BaseMenuHome extends StatelessWidget {
  ///Constructor base menu
  const BaseMenuHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 55,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.transparent, borderRadius: BorderRadius.circular(35)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            children: [
              OptionMenuHome('HOME', Icons.home, 0, (index) {
                changePage(index, context);
              }),
              OptionMenuHome('DUDAS', Icons.question_answer, 1, (index) {
                changePage(index, context);
              }),
              OptionMenuHome('PARA TI', Icons.star, 2, (index) {
                changePage(index, context);
              }),
            ],
          ),
        ),
      ),
    );
  }

  /// index page selected in home, current context
  void changePage(int index, BuildContext context) {
    //context.read<HomeProvider>().indexPage = index;
  }
}
