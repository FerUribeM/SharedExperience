import 'package:flutter/material.dart';

/// custom circle avatar with url
class CustomCircleAvatar extends StatelessWidget {
  ///constructor need url photo
  const CustomCircleAvatar({Key? key, required this.urlPhoto})
      : super(key: key);

  ///Url photo profile user
  final String urlPhoto;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 25.0,
      child: CircleAvatar(
        backgroundImage: NetworkImage(urlPhoto),
        radius: 24.0,
      ),
    );
  }
}
