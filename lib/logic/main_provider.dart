import 'package:flutter/material.dart';
import 'package:ui/view/home/home_screen.dart';
import 'package:ui/view/home/profile_screen.dart';

class MainProvider extends ChangeNotifier {
  int selectedPage = 0;

  List<Widget> screens = const [
    HomeScreen(),
    ProfileScreen(),
    Center(
      child: Text(
        ' Home 2',
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
      ),
    ),
    Center(
      child:  Text(
        ' Home 3 ',
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
      ),
    ),
  ];

  void changeCurrentPageSelected(int currentPage) {
    selectedPage = currentPage;
    notifyListeners();
  }
}
