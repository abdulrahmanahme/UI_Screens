import 'package:flutter/material.dart';
import 'package:ui/core/app_color.dart';
import 'package:ui/view/home/widgets/cutome_app_bar_yoga_screen.dart';

class YogaScreenDetails extends StatelessWidget {
  const YogaScreenDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar:const CustomAppBarYogaScreen(),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .6,
                width: double.infinity,
                child: const Image(
                  image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6L39zkwzIM3a_lARop8BqmnaZ9fNVpXMXeA&s',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * .3,
                left: 15,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Sandra Glam',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Denmark , Copenhagen',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * .28,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Container(
                            height: 5,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey.shade300),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Next exercises',
                              style: TextStyle(
                                fontSize: 15,
                                color: AppColor.blackColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                const Text(
                                  '2',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: AppColor.blackColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  ' of 3',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey.shade400,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            Container(
                              height: 80,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.amber,
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRi9e9mUwAtnG2w568gZ3GeBdzEhmUyv9I7Q&s'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                           const SizedBox(
                              width: 5,
                            ),
                            Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                              const  Text(
                                  'Snake pose',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: AppColor.blackColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '5 mins',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey.shade400,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Text(
                          'Sandra Glam',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Text(
                          'Denmark , Copenhagen',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
