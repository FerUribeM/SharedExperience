import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:sharedexperiences/src/core/util/util/router_settings.dart';
import 'package:sharedexperiences/src/pages/login/login_provider.dart';
import 'package:sharedexperiences/src/widgets/custom_btn.dart';
import 'package:sharedexperiences/src/widgets/custom_edittext.dart';

///Login page
class LoginPage extends StatelessWidget {
  ///Login constructor, create login screen
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/login.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Column(
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
                    ],
                  )),
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const CustomEdittext('Correo:'),
                      const CustomEdittext('Contraseña:'),
                      context.watch<LoginProvider>().showLoading ? SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: Lottie.asset('assets/loading.json'),
                      ) : CustomBtn(
                        title: 'Ingresar',
                        rounded: true,
                        transparent: true,
                        onPressed: () {
                          context.read<LoginProvider>().sendLogin("email", "password");
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushReplacementNamed(RoutersSettings.homeRoute);
                            //Navigator.pushNamed(
                            //    context, RoutersSettings.recoverPassRouter);
                          },
                          child: Text(
                            '¿Olvidaste tu contraseña?',
                            style: GoogleFonts.arvo(
                                decoration: TextDecoration.underline,
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
