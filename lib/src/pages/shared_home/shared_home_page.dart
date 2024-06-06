import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sharedexperiences/src/core/util/util/color_style.dart';
import 'package:sharedexperiences/src/core/util/util/my_font_styles.dart';
import 'package:sharedexperiences/src/pages/home/widgets/header_home.dart';
import 'package:sharedexperiences/src/pages/shared_home/item_home_widget.dart';
import 'package:sharedexperiences/src/provider/home_provider.dart';

const double _kViewportFraction = 0.7;

/// home content page cards
class SharedHomePage extends StatefulWidget {
  ///constructor in home content
  const SharedHomePage({Key? key}) : super(key: key);

  @override
  _SharedHomePageState createState() => _SharedHomePageState();
}

class _SharedHomePageState extends State<SharedHomePage> {
  final PageController _backgroundPageController = PageController();
  final PageController _pageController =
      PageController(viewportFraction: _kViewportFraction);

  ValueNotifier<double> selectedIndex = ValueNotifier<double>(0.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          PageView(
            controller: _backgroundPageController,
            children: _buildBackgroundPages(),
          ),
          NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              return _handlePageNotification(
                  notification, _pageController, _backgroundPageController);
            },
            child: PageView(
              physics: const BouncingScrollPhysics(),
              controller: _pageController,
              children: _buildPages(context),
            ),
          ),
          Column(
            children: [
              const HeaderHome(),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(left: 40),
                height: 50,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Column(
                        children: [
                          Text(
                            'Todos',
                            style: MyFontStyle.regularFontRoboto(size: 16),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Center(
                            child: Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                  color: ColorStyle.primaryColor,
                                  shape: BoxShape.circle),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text(
                        'Bosque',
                        style: MyFontStyle.regularFontRoboto(size: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text(
                        'Selva',
                        style: MyFontStyle.regularFontRoboto(size: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text(
                        'Ciudad',
                        style: MyFontStyle.regularFontRoboto(size: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text(
                        'Playa',
                        style: MyFontStyle.regularFontRoboto(size: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text(
                        'Desierto',
                        style: MyFontStyle.regularFontRoboto(size: 16),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Visibility(
            visible: context.watch<HomeProvider>().isDrawerOpen,
            child: GestureDetector(
              onTap: () {
                context.read<HomeProvider>().toggleDrawer();
              },
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black26,
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildBackgroundPages() {
    final backgroundPages = <Widget>[];
    for (var index = 0; index < 6; index++) {
      backgroundPages.add(Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              context.read<HomeProvider>().images[index],
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black26, Colors.transparent],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter))),
        ],
      ));
    }
    return backgroundPages;
  }

  bool _handlePageNotification(ScrollNotification notification,
      PageController leader, PageController follower) {
    if (notification.depth == 0 && notification is ScrollUpdateNotification) {
      selectedIndex.value = leader.page!;
      if (follower.page != leader.page) {
        follower.position.jumpTo(leader.position.pixels / _kViewportFraction);
      }
      setState(() {});
    }
    return false;
  }

  List<Widget> _buildPages(BuildContext context) {
    final pages = <Widget>[];
    var pictureHeight = MediaQuery.of(context).size.height * 0.60;
    var pictureWidth = MediaQuery.of(context).size.width * 0.70;
    for (var index = 0; index < 6; index++) {
      var alignment = Alignment.center
          .add(Alignment((selectedIndex.value - index) * 0.1, 0.45));

      var resizeFactor =
          (1 - (((selectedIndex.value - index).abs() * 0.2).clamp(0.0, 1.0)));

      pages.add(ItemHomeWidget(
          alignment,
          pictureWidth * resizeFactor,
          pictureHeight * resizeFactor,
          context.read<HomeProvider>().images[index]));
    }

    return pages;
  }
}

//TODO: Search bar component
/*
Expanded(
                          flex: 2,
                          child: GestureDetector(
                            onTap: () {

                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.black38,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.white),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, bottom: 4),
                                      child: TextFormField(
                                          enabled: false,
                                          textAlign: TextAlign.start,
                                          maxLines: 1,
                                          textInputAction:
                                              TextInputAction.search,
                                          onFieldSubmitted: (search) {},
                                          decoration: InputDecoration(
                                              hintText:
                                                  'BUSCAR LUGAR O PREGUNTA',
                                              enabledBorder: InputBorder.none,
                                              border: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                              hintStyle:
                                                  MyFontStyle.regularFont(
                                                      size: 12)),
                                          style: MyFontStyle.regularFont(
                                              size: 14)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
 */
