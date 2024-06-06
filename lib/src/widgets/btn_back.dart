import 'dart:io';

import 'package:flutter/material.dart';

/// Btn back close page
class BtnBack extends StatelessWidget {
  ///constructor close page
  const BtnBack({required this.onPressed, Key? key}) : super(key: key);

  ///on click option
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.all<Color>(Colors.white24),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black45),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side:
                          const BorderSide(color: Colors.white, width: 0.5)))),
          child: Padding(
            padding: EdgeInsets.only(left: Platform.isIOS ? 10 : 0),
            child: Center(
                child: Icon(
              Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
              color: Colors.white,
            )),
          )),
    );
  }
}
