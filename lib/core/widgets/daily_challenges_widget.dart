import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui/core/app_color.dart';

class DailyChallengesWidget extends StatelessWidget {
  const DailyChallengesWidget({super.key, required this.date});

  final String date;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      child: Stack(
        alignment: Alignment.bottomRight,
        clipBehavior: Clip.none,
        children: [
          Container(
            // height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: AppColor.defaultColor,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    'Daily\nChallenge',
                    style: TextStyle(
                        fontSize: 28,
                        height: 1.2,
                        fontWeight: FontWeight.w600,
                        color: AppColor.blackColor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Do your plan before $date',
                    style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: AppColor.blackColor),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 45,
                    width: 200,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: AppColor.greyColor,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO2vBQ1vOla9pPM6M0ZsYZb7OckCS21cgN_Q&s'),
                        ),
                        const Positioned(
                          left: 25,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: AppColor.greyColor,
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO2vBQ1vOla9pPM6M0ZsYZb7OckCS21cgN_Q&s'),
                          ),
                        ),
                        const Positioned(
                          left: 45,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: AppColor.greyColor,
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO2vBQ1vOla9pPM6M0ZsYZb7OckCS21cgN_Q&s'),
                          ),
                        ),
                        Positioned(
                          left: 70,
                          child: Container(
                            height: 39,
                            width: 40,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 115, 88, 222),
                            ),
                            child: const Center(
                              child: Text(
                                '+4',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          // Positioned(
          //   top: -20,
          //   right: 0,
          //   child: Container(
          //         height: 190,
            
          //     child: Image.asset('assets/images/woman.png')),
          // ),

        ],
      ),
    );
  }
}
