import 'package:flutter/material.dart';

class Office {

  List navigationBarItems() {
    List<BottomNavigationBarItem> items = [
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

    return items;
  }

}
