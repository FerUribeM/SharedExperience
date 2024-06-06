import 'package:flutter/material.dart';
import 'package:sharedexperiences/src/core/util/util/my_font_styles.dart';

///Dynamic btn with option in menu home
class OptionMenuHome extends StatelessWidget {
  ///need name option + icon + position in index
  const OptionMenuHome(this.name, this.icon, this.index, this.callback,
      {Key? key})
      : super(key: key);

  ///Name option
  final String name;

  ///icon option
  final IconData icon;

  ///index for stackindex in home option
  final int index;

  ///return index for IndexStack
  final Function(int) callback;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
          height: 48,
          decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.white)),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () => callback(index),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    color: Colors.white,
                    /*
                    color: context.watch<HomeProvider>().indexPage == index
                        ? Colors.white
                        : Colors.white.withOpacity(0.5),
                     */
                    size: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3, left: 4),
                    child: Text(
                      name,
                      style: MyFontStyle.regularFont(
                        size: 12,
                        color: Colors.white.withOpacity(0.5),
                        /*
                        color: context.watch<HomeProvider>().indexPage == index
                            ? Colors.white
                            : Colors.white.withOpacity(0.5),
                         */
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
