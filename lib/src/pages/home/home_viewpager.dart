import 'package:flutter/material.dart';
import 'package:sharedexperiences/src/provider/home_provider.dart';
import 'package:provider/provider.dart';

///Initial page when user is logged
class HomePage extends StatefulWidget {
  ///Constructor home page
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(
          context.watch<HomeProvider>().xOffset,
          context.watch<HomeProvider>().yOffset,
          0)
        ..scale(context.watch<HomeProvider>().scaleFactor)
        ..rotateY(context.watch<HomeProvider>().isDrawerOpen ? -0.5 : 0),
      duration: const Duration(milliseconds: 250),
      decoration: BoxDecoration(
          color: context.watch<HomeProvider>().isDrawerOpen
              ? Colors.black
              : Colors.grey[200],
          boxShadow: [
            BoxShadow(color: Colors.white.withOpacity(0.6), blurRadius: 15),
            BoxShadow(color: Colors.white.withOpacity(0.6), blurRadius: 15),
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                  context.watch<HomeProvider>().isDrawerOpen ? 40 : 0.0),
              bottomLeft: Radius.circular(
                  context.watch<HomeProvider>().isDrawerOpen ? 40 : 0.0))),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                    context.watch<HomeProvider>().isDrawerOpen ? 40 : 0.0),
                bottomLeft: Radius.circular(
                    context.watch<HomeProvider>().isDrawerOpen ? 40 : 0.0)),
            child: IndexedStack(
              index: context.watch<HomeProvider>().indexPage,
              children: context.read<HomeProvider>().getPageList(),
            ),
          ),
        ],
      ),
    );
  }
}
