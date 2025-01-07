import 'package:flutter/material.dart';
import 'package:ui/view/ui3/widgets/home_screen.dart';
import 'package:ui/view/ui3/widgets/profile_screen.dart';
import 'package:ui/view/ui3/widgets/youga_screen_details.dart';

class MainProvider extends ChangeNotifier {
  int selectedPage = 0;

  List<Widget> screens = const [
    HomeScreen(),
    ProfileScreen(),
    YogaScreenDetails(),
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
