import 'package:flutter/material.dart';
import '../pages/date.dart';
import '../pages/list.dart';
import '../pages/mark.dart';
import '../pages/self.dart';

class Config {

  static List<Widget> pages = [
    DatePage(
      key: PageStorageKey('DatePage'),
    ),
    ListPage(
      key: PageStorageKey('ListPage'),
    ),
    MarkPage(
      key: PageStorageKey('MarkPage'),
    ),
    SelfPage(
      key: PageStorageKey('SelfPage'),
    ),
  ];

  static PageStorageBucket bucket = PageStorageBucket();

  static List<BottomNavigationBarItem> navigationBarItems = [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.date_range,
      ),
      title: Text(
        "Calendar",
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.list, // event_note
      ),
      title: Text(
        "List",
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.bookmark_border, // grid_on 
      ),
      title: Text(
        "Bookmarks",
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.account_circle,
      ),
      title: Text(
        "Me",
      ),
    ),
  ];

  static BottomNavigationBar navigationBar = BottomNavigationBar(
    items: navigationBarItems,
    type: BottomNavigationBarType.fixed,
    fixedColor: Colors.red,
    showSelectedLabels: false,
    showUnselectedLabels: false,
  );

}
