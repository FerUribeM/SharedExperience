import 'package:flutter/material.dart';

/// create custom circle btn
class CustomCircleBtnApple extends StatelessWidget {

  /// inflate child in cicle btn
  const CustomCircleBtnApple({Key? key,required this.child}) : super(key: key);

  /// child in circle btn
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30)),
      child: TextButton(onPressed: () {
        print('MENSAJE');
      },
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.all<Color>(Colors.black12),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  )
              )),
          child: child),
    );
  }
}
