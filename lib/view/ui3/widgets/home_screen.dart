import 'package:flutter/material.dart';
import 'package:ui/core/app_color.dart';
import 'package:ui/core/widgets/calander_widget.dart';
import 'package:ui/core/widgets/custom_app_bar.dart';
import 'package:ui/core/widgets/daily_challenges_widget.dart';
import 'package:ui/core/widgets/your_plan_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomerAppBar(
          title: 'Sander',
          date: 'Today 14 Oct.',
          onTap: () {},
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              DailyChallengesWidget(
                date: '9:00 PM',
              ),
              SizedBox(
                height: 10,
              ),
              CalanderWidget(),
              SizedBox(
                height: 5,
              ),
              Text(
                'your Plan',
                style: TextStyle(
                    fontSize: 25,
                    color: AppColor.blackColor,
                    fontWeight: FontWeight.w700,
                    ),
              ),
               SizedBox(
                height: 5,
              ),
              YourPlanWidget(),
            ],
          ),
        ),
       
      ),
    );
  }
}
