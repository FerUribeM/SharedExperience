import 'package:flutter/material.dart';
import 'package:sharedexperiences/src/core/manager_router_images.dart';
import 'package:sharedexperiences/src/core/util/util/router_settings.dart';
import 'package:sharedexperiences/src/widgets/custom_btn.dart';
import 'package:sharedexperiences/src/widgets/custom_edittext.dart';

/// Page to recover password
class RecoverPassPage extends StatelessWidget {
  /// Constructor recover pass
  const RecoverPassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ManagerRouterImages.recoverPassBackground),
              fit: BoxFit.cover)),
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Hero(
                          tag: 'logo_travel',
                          child: Image.asset(ManagerRouterImages.logoTravel))),
                ],
              )),
          Expanded(
            flex: 1,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const CustomEdittext('Correo:'),
                  CustomBtn(
                    title: 'RECUPERAR',
                    rounded: true,
                    transparent: true,
                    onPressed: () {
                      Navigator.pushNamed(
                          context, RoutersSettings.welcomeRoute);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
