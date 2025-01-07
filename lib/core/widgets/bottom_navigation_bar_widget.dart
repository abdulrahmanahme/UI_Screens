import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:ui/core/app_color.dart';
import 'package:ui/logic/main_provider.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppColor.blackColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 3),
        child: Consumer<MainProvider>(
          builder: (context, value, child) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              value.selectedPage == 0
                  ? Container(
                      height: 65,
                      width: 65,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Icon(
                        Icons.home_outlined,
                      ),
                    )
                  : InkWell(
                      onTap: () {
                        value.changeCurrentPageSelected(0);
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.home_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
              value.selectedPage == 1
                  ? Container(
                      height: 65,
                      width: 65,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Icon(
                        Icons.home_outlined,
                      ),
                    )
                  : InkWell(
                      onTap: () {
                        value.changeCurrentPageSelected(1);
                      },
                      child: const Icon(
                        Icons.home_outlined,
                        color: Colors.white,
                      ),
                    ),
              value.selectedPage == 2
                  ? Container(
                      height: 65,
                      width: 65,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Icon(
                        Icons.home_outlined,
                      ),
                    )
                  : InkWell(
                      onTap: () {
                        value.changeCurrentPageSelected(2);
                      },
                      child: const Icon(
                        Icons.home_outlined,
                        color: Colors.white,
                      ),
                    ),
              value.selectedPage == 3
                  ? Container(
                      height: 65,
                      width: 65,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Icon(
                        Icons.home_outlined,
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          value.changeCurrentPageSelected(3);
                        },
                        child: const Icon(
                          Icons.person_outlined,
                          color: Colors.white,
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
