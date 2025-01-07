import 'package:flutter/material.dart';
import 'package:ui/view/home/ui4/widgets/app_bar_widget.dart';
import 'package:ui/view/home/ui4/widgets/bottom_navbar_widget.dart';
import 'package:ui/view/home/ui4/widgets/explore_the_city_widget.dart';
import 'package:ui/view/home/ui4/widgets/popular_hotel_card.dart';
import 'package:ui/view/home/ui4/widgets/search_widget.dart';

class TravelingScreen extends StatelessWidget {
  const TravelingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: const Color(0xff121A27),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBarWidget(),
              const SizedBox(
                height: 25,
              ),
              const SearchWidget(),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Explore City',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const ExploreTheCityWidget(),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Recommend for your tripe',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              // RecommendedTripeWidget(),
              Expanded(
                  child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: PopularHotelCard(),
                ),
              ))
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavBarWidget(),
      ),
    );
  }
}
