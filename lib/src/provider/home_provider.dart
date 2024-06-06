import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:sharedexperiences/src/pages/doubts/doubts_page.dart';
import 'package:sharedexperiences/src/pages/for_you/for_you_page.dart';
import 'package:sharedexperiences/src/pages/shared_home/shared_home_page.dart';

///Home provider contains logic
@injectable
class HomeProvider extends ChangeNotifier {
  /// all variables for animation in drawer
  double xOffset = 0;

  double yOffset = 0;

  double scaleFactor = 1;

  bool isDrawerOpen = false;

  ///Home init list images
  HomeProvider() {
    images.add(
        'https://images.unsplash.com/photo-1588331518990-3819fbe063d6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80');
    images.add(
        'https://images.unsplash.com/photo-1587102100712-6c7ae6b6da53?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80');
    images.add(
        'https://images.unsplash.com/photo-1610574089648-478eabc2c973?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80');
    images.add(
        'https://images.unsplash.com/photo-1607850013592-558eca7d20ff?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=666&q=80');
    images.add(
        'https://images.unsplash.com/photo-1625600878852-cfe60828e27c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80');
    images.add(
        'https://images.unsplash.com/photo-1558902782-57d6c97b0b43?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80');
  }

  /// open or close drawer menu
  void toggleDrawer() {
    if (isDrawerOpen) {
      xOffset = 0;
      yOffset = 0;
      scaleFactor = 1;
      isDrawerOpen = false;
    } else {
      xOffset = 200;
      yOffset = 150;
      scaleFactor = 0.7;
      isDrawerOpen = true;
    }

    notifyListeners();
  }

  /// current index in home
  int _indexPage = 0;

  /// get new page
  int get indexPage => _indexPage;

  /// change new page in home
  set indexPage(int value) {
    _indexPage = value;
    notifyListeners();
  }

  List<String> images = [];

  /// Init pages for home
  List<Widget> getPageList() {
    var pages = <Widget>[];
    pages = pages
      ..add(const SharedHomePage())
      ..add(const DoubtsPage())
      ..add(const ForYouPage());
    return pages;
  }
}
