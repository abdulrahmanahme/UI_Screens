import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui/core/app_color.dart';

class CalanderWidget extends StatefulWidget {
  const CalanderWidget({
    super.key,
  });

  @override
  State<CalanderWidget> createState() => _CalanderWidgetState();
}

class _CalanderWidgetState extends State<CalanderWidget> {
  int selectedDay = 0;
  void changeSelectedDay(int currentDay) {
    selectedDay = currentDay;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(
          horizontal: 5,
        ),
        itemCount: 7,
        itemBuilder: (context, int index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 3),
          child: Container(
            height: 70,
            width: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                width: 1,
                color: Colors.grey.shade300,
              ),
              color: selectedDay == index ? AppColor.blackColor : Colors.white,
            ),
            child: InkWell(
              onTap: () {
                changeSelectedDay(index);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sun',
                    style: TextStyle(
                        fontSize: 15,
                        color: selectedDay != index
                            ? Colors.grey.shade500
                            : Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    '22',
                    style: TextStyle(
                        fontSize: 15,
                        color: selectedDay != index
                            ? Colors.black45
                            : Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
