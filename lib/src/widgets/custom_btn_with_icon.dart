import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Custom btn with icon
class CustomBtnWithIcon extends StatelessWidget {
  ///constructor name + icon
  const CustomBtnWithIcon(
      {required this.text,
      required this.iconData,
      required this.onPressed,
      Key? key})
      : super(key: key);

  ///text in btn
  final String text;

  ///icon in btn
  final IconData iconData;

  ///function in btn next
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.all(30),
            width: MediaQuery.of(context).size.width * 0.5,
            height: 50,
            child: TextButton(
                onPressed: onPressed,
                style: ButtonStyle(
                    overlayColor:
                        MaterialStateProperty.all<Color>(Colors.white24),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black45),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: const BorderSide(
                                color: Colors.white, width: 2.0)))),
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      text,
                      style:
                          GoogleFonts.arvo(color: Colors.white, fontSize: 18),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(
                      iconData,
                      color: Colors.white,
                    ),
                  ],
                ))),
          ),
        ],
      ),
    );
  }
}
