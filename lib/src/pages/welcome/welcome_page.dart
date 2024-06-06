import 'dart:math';
import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:sharedexperiences/src/core/manager_router_images.dart';
import 'package:sharedexperiences/src/core/util/util/my_font_styles.dart';
import 'package:sharedexperiences/src/core/util/util/router_settings.dart';
import 'package:sharedexperiences/src/widgets/custom_btn.dart';
import 'package:sharedexperiences/src/widgets/custom_circle_btn_apple.dart';

///Page with options for login
class WelcomePage extends StatefulWidget {
  ///constructor page
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ManagerRouterImages.welcomeImage),
              fit: BoxFit.cover)),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 160),
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                SampleAnimation(),
                SampleAnimation(),
                SampleAnimation(),
                SampleAnimation(),
                SampleAnimation(),
                SampleAnimation(),
                SampleAnimation(),
                SampleAnimation(),
                SampleAnimation(),
                SampleAnimation(),
                SampleAnimation(),
              ],
            ),
          ),
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.only(top: 60),
                  width: double.infinity,
                  height: double.infinity,
                  child: Center(
                    child: Text(
                      '  ', //'BIENVENIDO',
                      style: MyFontStyle.boldFont(size: 32),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: ZoomIn(
                  child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Hero(
                        tag: 'logo_travel',
                        child: Image.asset(
                          ManagerRouterImages.logoTravel,
                          scale: 2.2,
                        )),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomBtn(
                        title: 'Registrarse',
                        rounded: true,
                        transparent: true,
                        onPressed: () {
                          Navigator.pushNamed(
                              context, RoutersSettings.registerRouter);
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomBtn(
                        title: 'Ya tengo cuenta',
                        rounded: true,
                        transparent: true,
                        onPressed: () {
                          Navigator.pushNamed(
                              context, RoutersSettings.loginRouter);
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: 50,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomCircleBtnApple(
                                child: Center(
                              child: SizedBox(
                                width: 30,
                                height: 30,
                                child: Image.asset(
                                  ManagerRouterImages.apple,
                                ),
                              ),
                            )),
                            Center(
                              child: Image.asset(ManagerRouterImages.google),
                            ),
                            Center(
                              child: Image.asset(ManagerRouterImages.face),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, RoutersSettings.recoverPassRouter);
                          },
                          child: Text(
                            'Continuar como invitado',
                            style: MyFontStyle.regularFont(size: 14),
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }

  int getRandomMargin() {
    Random rnd;
    int min = 5;
    int max = 40;
    rnd = new Random();
    return min + rnd.nextInt(max - min);
  }

  Widget AnimationFire() {
    return FadeOutUp(
      controller: (controller) {
        controller.addStatusListener((status) {
          print("entro al listener $status");
          if (status == AnimationStatus.completed) {
            controller.repeat();
          }
        });
      },
      manualTrigger: true,
      animate: true,
      from: 250,
      duration: const Duration(milliseconds: 900),
      child: Padding(
        padding: EdgeInsets.all(14),
        child: Container(
          width: 4,
          height: 4,
          color: Color(0xFFCEBA89),
          margin: EdgeInsets.symmetric(horizontal: 5),
        ),
      ),
    );
  }
}

class SampleAnimation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SampleAnimationState();
  }
}

class SampleAnimationState extends State<SampleAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation? _animation;
  Path? _path;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2500));
    super.initState();
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller!)
      ..addListener(() {
        setState(() {});
      });
    _controller?.forward();
    _controller?.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _path = drawPath();
        _controller?.reset();
        _controller?.forward();
      }
    });
    _path = drawPath();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            child: CustomPaint(
              painter: PathPainter(_path!),
            ),
          ),
          Positioned(
            top: calculate(_animation?.value).dy,
            left: calculate(_animation?.value).dx,
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFCEBA89),
                  borderRadius: BorderRadius.circular(10)),
              width: 4,
              height: 4,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  Path drawPath() {
    Size size = Size(600, 380);
    Path path = Path();
    path.moveTo(size.height / 2, size.height);
    path.quadraticBezierTo(
        Random().nextInt(size.width ~/ 1).toDouble(),
        Random().nextInt(300).toDouble(),
        Random().nextInt(300).toDouble(),
        Random().nextInt(size.height ~/ 3).toDouble());
    return path;
  }

  Offset calculate(value) {
    PathMetrics pathMetrics = _path!.computeMetrics();
    PathMetric pathMetric = pathMetrics.elementAt(0);
    value = pathMetric.length * value;
    Tangent? pos = pathMetric.getTangentForOffset(value);
    return pos!.position;
  }
}

class PathPainter extends CustomPainter {
  Path path;

  PathPainter(this.path);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.transparent
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.0;

    canvas.drawPath(this.path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
