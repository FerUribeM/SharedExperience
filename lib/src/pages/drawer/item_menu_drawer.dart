import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sharedexperiences/src/core/util/util/color_style.dart';
import 'package:sharedexperiences/src/core/util/util/my_font_styles.dart';

import '../../provider/home_provider.dart';

/// item menu drawer
class ItemMenuDrawer extends StatelessWidget {
  ///constructor name + icon + selected
  const ItemMenuDrawer(
      {Key? key,
      required this.icon,
      required this.title,
      required this.index,
      this.isSelected = false})
      : super(key: key);

  /// icon in menu drawer
  final IconData icon;

  /// title in menu drawer
  final String title;

  /// isSelected in menu drawer
  final bool isSelected;

  /// isSelected in menu drawer
  final int index;


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: (){
          changePage(index, context);
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Row(
            children: [
              isSelected
                  ? Container(
                      width: 7,
                      height: 7,
                      decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorStyle.primaryColor
                          ),
                    )
                  : Container(),
              const SizedBox(
                width: 8,
              ),
              Icon(
                icon,
                color: Colors.white,
                size: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: MyFontStyle.regularFontRoboto(size: 16),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// index page selected in home, current context
  void changePage(int index, BuildContext context){
    context.read<HomeProvider>().toggleDrawer();
    context.read<HomeProvider>().indexPage = index;
  }

}
