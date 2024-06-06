import 'package:flutter/material.dart';
import 'package:sharedexperiences/src/core/util/util/my_font_styles.dart';

///Create custom button editable
class CustomBtn extends StatelessWidget {
  /// this is constructor
  const CustomBtn(
      {Key? key,
      required this.title,
      required this.rounded,
      required this.transparent,
      required this.onPressed})
      : super(key: key);

  ///name in button
  final String title;

  ///type border in button
  final bool rounded;

  ///btn transparent
  final bool transparent;

  ///on click option
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 50,
      child: TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.all<Color>(Colors.white24),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black45),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: rounded
                          ? BorderRadius.circular(30.0)
                          : BorderRadius.circular(0.0),
                      side:
                          const BorderSide(color: Colors.white, width: 2.0)))),
          child: Center(
            child: Text(title, style: MyFontStyle.regularFont(size: 16)),
          )),
    );
  }
}
