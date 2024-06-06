import 'package:flutter/material.dart';
import 'package:sharedexperiences/src/core/util/util/color_style.dart';
import 'package:sharedexperiences/src/core/util/util/my_font_styles.dart';

/// search doubtls
class SearchDoubts extends StatelessWidget {

  ///constructor empty
  const SearchDoubts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      margin: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                      icon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: 'Buscar',
                      hintStyle: MyFontStyle.regularFontRoboto(
                          color: Colors.black, size: 18)),
                ),
              )),
          Container(
            width: 50,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: ColorStyle.primaryColor,
            ),
            child: const Center(
              child: Icon(
                Icons.filter_list_sharp,
                color: Colors.white,
                size: 28,
              ),
            ),
          )
        ],
      ),
    );
  }
}
