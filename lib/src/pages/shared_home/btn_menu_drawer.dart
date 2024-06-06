import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sharedexperiences/src/provider/home_provider.dart';


/// btn in menu drawer
class BtnMenuDrawer extends StatelessWidget {

  ///constructor empty
  const BtnMenuDrawer({Key? key, this.color = Colors.white}) : super(key: key);

  ///icon menu color
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: (){
          context.read<HomeProvider>().toggleDrawer();
        },
        child: Icon(
          Icons.menu,
          size: 28,
          color: color,
        ),
      ),
    );
  }
}
