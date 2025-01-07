import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui/logic/main_provider.dart';
import 'package:ui/core/widgets/bottom_navigation_bar_widget.dart';

class BottomNavBarScreen extends StatelessWidget {
  const BottomNavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MainProvider>(
      builder: (BuildContext context, MainProvider value, Widget? child) {
        return Scaffold(
          body: value.screens[context.read<MainProvider>().selectedPage],
          bottomNavigationBar: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                BottomNavigationBarWidget(),
              ],
            ),
          ),
        );
      },
    );
  }
}
