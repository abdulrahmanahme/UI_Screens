import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui/core/shard_prf/shard_pref.dart';
import 'package:ui/logic/main_provider.dart';
import 'package:ui/ui5/widget/bottom_nav_bar.dart';
import 'package:ui/ui5/widget/travel_screen.dart';
import 'package:ui/view/food/food_screen.dart';
import 'package:ui/view/home/ui4/screen/hotel_info_screen.dart';
import 'package:ui/view/movie/movie_screen.dart';
import 'package:ui/view/ui3/widgets/bottom_nav_bar_screen.dart';
import 'package:ui/view/ui2/yoga_home_screen.dart';
import 'package:ui/view/ui3/movies_screen.dart';
import 'package:ui/view/home/ui4/screen/traveling_screen.dart';
import 'package:ui/view/ui6/advangture/tripe_gide_screen.dart';

void main() {
  ShardPrefHelper shardPrefHelper =ShardPrefHelper();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MainProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Rany',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TripeGideScreen(),
    );
  }
}
