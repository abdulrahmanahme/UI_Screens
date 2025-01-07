import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui/core/app_color.dart';

class ProgressUserWidgets extends StatelessWidget {
  const ProgressUserWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColor.secondaryColor,
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Start widget',
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColor.blackColor,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                Text(
                  '53.kg',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColor.blackColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
       const SizedBox(
          width: 2,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColor.defaultColor,
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Goal',
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColor.blackColor,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                Text(
                  '50.0.kg',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColor.blackColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
      const  SizedBox(
          width: 2,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.orange.shade200,
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Daily challenge',
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColor.blackColor,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                Text(
                  '740.0.kg',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColor.blackColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
