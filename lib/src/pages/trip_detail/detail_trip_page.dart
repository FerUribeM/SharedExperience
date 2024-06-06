import 'dart:io';
import 'dart:ui';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:sharedexperiences/src/core/util/util/my_font_styles.dart';
import 'package:sharedexperiences/src/pages/trip_detail/objects_to_bring.dart';
import 'package:sharedexperiences/src/widgets/btn_back.dart';
import 'package:sharedexperiences/src/widgets/custom_btn.dart';
import 'package:sharedexperiences/src/widgets/custom_circle_btn.dart';

/// Detail trip from home page
class DetailTripPage extends StatefulWidget {
  ///constructor empty contructor
  const DetailTripPage({Key? key}) : super(key: key);

  @override
  _DetailTripPageState createState() => _DetailTripPageState();
}

class _DetailTripPageState extends State<DetailTripPage> {
  bool isFullScreen = false;

  double get maxHeight => MediaQuery.of(context).size.height;

  void _onDragEnd(DragEndDetails details) {
    final flingVelocity = details.velocity.pixelsPerSecond.dy / maxHeight;

    if (flingVelocity < 0.0) {
      setState(() {
        isFullScreen = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background_temp.jpg'),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black38,
                  Colors.transparent,
                ],
              )),
            ),
            AnimatedOpacity(
              opacity: isFullScreen ? 0 : 1,
              duration: const Duration(milliseconds: 500),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 50, left: 20, right: 20),
                    child: SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          BtnBack(
                            onPressed: () {},
                          ),
                          const Spacer(),
                          CustomCircleBtn(
                              onPressed: () {},
                              icon: Platform.isIOS
                                  ? Icons.ios_share
                                  : Icons.share_rounded),
                          const SizedBox(
                            width: 15,
                          ),
                          CustomCircleBtn(
                              onPressed: () {},
                              icon: FontAwesomeIcons.solidHeart),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30, bottom: 10),
                            child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  'JALISCO',
                                  style:
                                      MyFontStyle.regularFontRoboto(size: 16),
                                )),
                          ),
                          Text(
                            'DESIERTO DEL NORTE',
                            style: MyFontStyle.regularFont(size: 42),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 10, right: 10),
                            child: Row(
                              children: [
                                const FaIcon(
                                  FontAwesomeIcons.calendar,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '2021/07/22',
                                    style: MyFontStyle.regularFontRoboto(),
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Soleado',
                                    style: MyFontStyle.regularFontRoboto(),
                                  ),
                                ),
                                const FaIcon(
                                  FontAwesomeIcons.sun,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.globe,
                                color: Colors.white,
                                size: 16,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '10.2313, -103-282719',
                                  style: MyFontStyle.regularFontRoboto(),
                                ),
                              )
                            ],
                          ),
                        ]),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: GestureDetector(
                onVerticalDragEnd: _onDragEnd,
                child: AnimatedContainer(
                  margin: isFullScreen
                      ? const EdgeInsets.all(0)
                      : const EdgeInsets.all(30),
                  height: isFullScreen ? maxHeight : maxHeight * 0.5,
                  width: double.infinity,
                  duration: const Duration(milliseconds: 600),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.white.withOpacity(0.1),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Visibility(
                              visible: !isFullScreen,
                              child: Lottie.asset('assets/up_up.json',
                                  height: 60, width: 80, fit: BoxFit.cover),
                            ),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 40,
                                ),
                                Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  child: Row(
                                    children: [
                                      if (isFullScreen)
                                        BackButton(
                                          onPressed: () {
                                            setState(() {
                                              isFullScreen = false;
                                            });
                                          },
                                          color: Colors.white,
                                        ),
                                      if (isFullScreen) const Spacer(),
                                      const FaIcon(
                                        FontAwesomeIcons.solidHeart,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'A 125 usuarios les gusta esto',
                                          style:
                                              MyFontStyle.regularFontRoboto(),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: IgnorePointer(
                                    ignoring: !isFullScreen,
                                    child: Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      child: ListView(
                                        physics: const BouncingScrollPhysics(),
                                        children: [
                                          Center(
                                            child: Text(
                                              'Descripción',
                                              style: MyFontStyle.boldFont(),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            'Lorem ipsum dolor sit amet,'
                                            ' consectetur adipiscing'
                                            ' elit. Morbi quisque '
                                            'volutpat a sem nibh non.'
                                            ' Nunc tempus risus '
                                            'lacus nibh aliquam. '
                                            'Nunc, lorem ornare condimentum'
                                            ' enim, eget tellus nibh '
                                            'suspendisse.',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 6,
                                            style:
                                                MyFontStyle.regularFontRoboto(
                                                    size: 16),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          const ObjectsToBring(),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Center(
                                            child: Text(
                                              'Cosas para hacer/probar',
                                              style: MyFontStyle.boldFont(),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            '1.- Lorem ipsum dolor '
                                            'sit amet,'
                                            ' consectetur adipiscing'
                                            ' elit. Morbi quisque ',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 6,
                                            style:
                                                MyFontStyle.regularFontRoboto(
                                                    size: 16),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            '2.- Lorem ipsum dolor '
                                            'sit amet,'
                                            ' consectetur adipiscing'
                                            ' elit. Morbi quisque ',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 6,
                                            style:
                                                MyFontStyle.regularFontRoboto(
                                                    size: 16),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            '3.- Lorem ipsum dolor '
                                            'sit amet,'
                                            ' consectetur adipiscing'
                                            ' elit. Morbi quisque ',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 6,
                                            style:
                                                MyFontStyle.regularFontRoboto(
                                                    size: 16),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            '4.- Lorem ipsum dolor '
                                            'sit amet,'
                                            ' consectetur adipiscing'
                                            ' elit. Morbi quisque ',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 6,
                                            style:
                                                MyFontStyle.regularFontRoboto(
                                                    size: 16),
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          SizedBox(
                                              height: 250,
                                              child: Swiper(
                                                itemBuilder:
                                                    (BuildContext context,
                                                        int index) {
                                                  return Image.network(
                                                    'https://images.unsplash.com/photo-1627729115394-16a6019b4064?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=802&q=80',
                                                    fit: BoxFit.fill,
                                                  );
                                                },
                                                itemCount: 10,
                                                viewportFraction: 0.7,
                                                scale: 0.8,
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                )),
                                AnimatedOpacity(
                                  opacity: isFullScreen ? 0 : 1,
                                  duration: const Duration(milliseconds: 1100),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: CustomBtn(
                                        title: 'Mas información',
                                        rounded: false,
                                        transparent: true,
                                        onPressed: () {
                                          setState(() {
                                            isFullScreen = true;
                                          });
                                        }),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
