import 'package:flutter/material.dart';
import 'package:sharedexperiences/src/core/manager_router_images.dart';
import 'package:sharedexperiences/src/core/util/util/my_font_styles.dart';
import 'package:sharedexperiences/src/widgets/custom_btn.dart';
import 'package:sharedexperiences/src/widgets/custom_edittext.dart';

///register page screen
class RegisterPage extends StatelessWidget {
  ///register page screen constructor
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ManagerRouterImages.registerBackground),
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
                        child: Image.asset('assets/logo_travel.png'))),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    'Registrate',
                    style: MyFontStyle.boldFont(size: 32),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const CustomEdittext('Nombre:'),
                    const CustomEdittext('Correo:'),
                    const CustomEdittext('Contraseña:'),
                    CustomBtn(
                      title: 'Registrarse',
                      rounded: true,
                      transparent: true,
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
