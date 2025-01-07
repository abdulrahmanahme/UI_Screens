import 'package:flutter/material.dart';
import 'package:ui/core/widgets/category_user_profile.dart';
import 'package:ui/core/widgets/custom_app_bar_profile.dart';
import 'package:ui/core/widgets/profile_user_data_widget.dart';
import 'package:ui/core/widgets/progress_user_widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomerAppBarProfile(),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: const Column(
            children: [
              SizedBox(
                height: 15,
              ),
              ProfileUserDataWidget(),
              SizedBox(
                height: 15,
              ),
              ProgressUserWidgets(),
              SizedBox(
                height: 30,
              ),
              CategoryUserProfile()
            ],
          ),
        ),
      ),
    );
  }
}

