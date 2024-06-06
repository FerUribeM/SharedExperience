import 'package:flutter/material.dart';

/// search item widget in home
class SearchItemWidget extends StatelessWidget {

  ///constructor empty
  const SearchItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          child: Image.asset('assets/logo_travel.png'),
        ),
        GestureDetector(
          onTap: () {

          },
          child: Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
