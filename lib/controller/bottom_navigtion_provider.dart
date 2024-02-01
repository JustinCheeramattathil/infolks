import 'package:flutter/material.dart';
import 'package:infolks/view/home/logout_screen.dart';
import 'package:infolks/view/home/user_screen.dart';

class BottomNavigationProvider extends ChangeNotifier {
  int pickedIndex = 0;
 
  onItemTapped(int index) {
    pickedIndex = index;
    notifyListeners();
  }
}
