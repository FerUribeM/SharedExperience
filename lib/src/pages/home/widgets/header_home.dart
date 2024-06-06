import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/home_provider.dart';

/// Header component in home
class HeaderHome extends StatelessWidget {
  ///constructor empty
  const HeaderHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Container(
        height: 80,
        margin: const EdgeInsets.only(top: 20),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => context.read<HomeProvider>().toggleDrawer(),
                  child: const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.black,
                      child: Image.asset('assets/logo_travel.png'),
                    ),
                  ),
                ),
                const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 28,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
