import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sharedexperiences/src/core/util/util/color_style.dart';
import 'package:sharedexperiences/src/core/util/util/my_font_styles.dart';
import 'package:sharedexperiences/src/pages/doubts/item_doubts.dart';
import 'package:sharedexperiences/src/pages/doubts/search_doubts.dart';
import 'package:sharedexperiences/src/pages/shared_home/btn_menu_drawer.dart';

import '../../provider/home_provider.dart';

/// DoubtsPage user see publications other users
class DoubtsPage extends StatelessWidget {
  ///constructor empty in doubts page
  const DoubtsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyle.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const BtnMenuDrawer(color: Colors.black),
        centerTitle: true,
        title: Text(
          'Dudas',
          style: MyFontStyle.boldFontRoboto(size: 22, color: Colors.black),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  color: Colors.black45,
                  shape: BoxShape.circle,
                  border:
                      Border.all(color: ColorStyle.primaryColor, width: 1.5)),
              child: const Center(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                const SearchDoubts(),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const ItemDoubts();
                    })
              ],
            ),
          ),
          Visibility(
            visible: context.watch<HomeProvider>().isDrawerOpen,
            child: GestureDetector(
              onTap: () {
                context.read<HomeProvider>().toggleDrawer();
              },
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black26,
              ),
            ),
          )
        ],
      ),
    );
  }
}
