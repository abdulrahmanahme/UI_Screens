import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui/core/app_color.dart';

class YourPlanWidget extends StatelessWidget {
  const YourPlanWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        YourGroupeWidget(
          level: 'Medium',
          title: 'Your Group',
          date: '25 Nov',
          time: '14:00 -15:00',
          room: 'As room',
          trainerUserName: 'Tiffy Way',
        ),
        SizedBox(
          width: 10,
        ),
        BalanceWidget(
          level: 'Medium',
          title: 'Balance',
          date: '25 Nov',
          time: '14:00 -15:00',
          room: 'As room',
        ),
      ],
    ));
  }
}

class BalanceWidget extends StatelessWidget {
  const BalanceWidget(
      {super.key,
      required this.level,
      required this.title,
      required this.date,
      required this.time,
      required this.room});
  final String level;
  final String title;
  final String date;
  final String time;
  final String room;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.width * .4,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColor.secondaryColor,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 3,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white70,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                    child: Text(
                      level,
                      style: const TextStyle(
                        fontSize: 12,
                        color: AppColor.blackColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    color: AppColor.blackColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppColor.blackColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  time,
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppColor.blackColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  room,
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppColor.blackColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: MediaQuery.of(context).size.width * .2,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.pink.shade300,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 5, color: Colors.grey.shade400),
                    color: Colors.white,
                  ),
                  child: Container(
                    child: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.facebook,
                        size: 25,
                        color: Colors.pink.shade100,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 5, color: Colors.grey.shade400),
                      color: Colors.white,
                    ),
                    child: Container(
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.tiktok,
                          size: 25,
                          color: Colors.pink.shade100,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 5, color: Colors.grey.shade400),
                    color: Colors.white,
                  ),
                  child: Container(
                    child: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.facebook,
                        size: 25,
                        color: Colors.pink.shade100,
                      ),
                    ),
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

class YourGroupeWidget extends StatelessWidget {
  const YourGroupeWidget({
    super.key,
    required this.level,
    required this.title,
    required this.date,
    required this.time,
    required this.room,
    required this.trainerUserName,
  });
  final String level;
  final String title;
  final String date;
  final String time;
  final String room;
  final String trainerUserName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColor.defaultColor,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white70,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                child: Text(
                  level,
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppColor.blackColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                color: AppColor.blackColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              date,
              style: const TextStyle(
                fontSize: 12,
                color: AppColor.blackColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              time,
              style: const TextStyle(
                fontSize: 12,
                color: AppColor.blackColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              room,
              style: const TextStyle(
                fontSize: 12,
                color: AppColor.blackColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            Row(
              children: [
                const CircleAvatar(
                  radius: 15,
                  backgroundColor: AppColor.greyColor,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO2vBQ1vOla9pPM6M0ZsYZb7OckCS21cgN_Q&s'),
                ),
                const SizedBox(
                  width: 7,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Trainer',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColor.blackColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      trainerUserName,
                      style: const TextStyle(
                        fontSize: 15,
                        color: AppColor.blackColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
