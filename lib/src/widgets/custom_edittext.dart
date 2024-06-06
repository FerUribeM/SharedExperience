import 'package:flutter/material.dart';
import 'package:sharedexperiences/src/core/util/util/util_widget.dart';

///create custom edittext
class CustomEdittext extends StatelessWidget {
  /// create custom edittextfield
  const CustomEdittext(this.labelText, {Key? key}) : super(key: key);

  /// hint text
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(bottom: 20),
      width: MediaQuery.of(context).size.width * 0.8,
      child: TextFormField(
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
            labelText: this.labelText,
            enabledBorder: outLineBorder(),
            focusedBorder: outLineBorder(),
            labelStyle: const TextStyle(color: Colors.white, fontSize: 13)),
      ),
    );
  }
}
