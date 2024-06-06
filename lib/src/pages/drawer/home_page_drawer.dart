import 'package:flutter/material.dart';
import 'package:sharedexperiences/src/pages/drawer/item_menu_drawer.dart';
import 'package:sharedexperiences/src/pages/home/home_viewpager.dart';
import 'package:sharedexperiences/src/widgets/custom_circle_avatar.dart';

import '../../core/util/util/my_font_styles.dart';

/// HomePageDrawer dynamic drawer container
class DrawerMenuHome extends StatefulWidget {
  const DrawerMenuHome({Key? key}) : super(key: key);

  @override
  _DrawerMenuHomeState createState() => _DrawerMenuHomeState();
}

class _DrawerMenuHomeState extends State<DrawerMenuHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      const CustomCircleAvatar(
                          urlPhoto:
                              'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80'),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Daniel Garcia',
                            style: MyFontStyle.boldFontRoboto(),
                          ),
                          Text(
                            'Blogger',
                            style: MyFontStyle.regularFontRoboto(),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Spacer(),
                const ItemMenuDrawer(
                  icon: Icons.house,
                  title: 'Home',
                  isSelected: true,
                  index: 0,
                ),
                const ItemMenuDrawer(
                  icon: Icons.duo,
                  title: 'Dudas',
                  index: 1,
                ),
                const ItemMenuDrawer(
                  icon: Icons.money_off,
                  title: 'Promociones',
                  index: 2,
                ),
                const ItemMenuDrawer(
                  icon: Icons.question_answer,
                  title: 'Preguntas',
                  index: 2,
                ),
                const Spacer(),
                const ItemMenuDrawer(
                  icon: Icons.settings,
                  title: 'Settings',
                  index: 1,
                ),
                const ItemMenuDrawer(
                  icon: Icons.logout,
                  title: 'Logout',
                  index: 1,
                ),
                const Spacer(),
                Container(
                  height: 80,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 7),
                        child: Text(
                          'S',
                          style: MyFontStyle.boldFont(size: 32),
                        ),
                      ),
                      Text(
                        'hared',
                        style: MyFontStyle.boldFont(size: 22),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 7),
                        child: Text(
                          'E',
                          style: MyFontStyle.boldFont(size: 32),
                        ),
                      ),
                      Text(
                        'xperience',
                        style: MyFontStyle.boldFont(size: 22),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const HomePage()
        ],
      ),
    );
  }
}
