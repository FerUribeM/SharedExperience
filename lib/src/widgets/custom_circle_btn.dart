import 'package:flutter/material.dart';

/// Btn back close page
class CustomCircleBtn extends StatelessWidget {
  ///constructor close page
  const CustomCircleBtn({required this.onPressed, required this.icon, Key? key})
      : super(key: key);

  ///on click option
  final VoidCallback onPressed;

  ///icon in btn
  final IconData icon;

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
          child: Center(
              child: Icon(
            icon,
            size: 18,
            color: Colors.white,
          ))),
    );
  }
}
