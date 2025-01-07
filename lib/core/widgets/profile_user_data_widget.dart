import 'package:flutter/material.dart';
import 'package:ui/core/app_color.dart';

class ProfileUserDataWidget extends StatelessWidget {
  const ProfileUserDataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: AppColor.greyColor,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO2vBQ1vOla9pPM6M0ZsYZb7OckCS21cgN_Q&s'),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Sandra Glam',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColor.blackColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Denmark , Copenhagen',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Follow',
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColor.blackColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '77',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColor.blackColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 15,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Followers',
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColor.blackColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '162',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColor.blackColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: InkWell(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.logout,
                    size: 15,
                    color: AppColor.blackColor,
                  ),
                ),
              ),
            ),
          const  SizedBox(
              width: 5,
            ),
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: InkWell(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.edit,
                    size: 15,
                    color: AppColor.blackColor,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
