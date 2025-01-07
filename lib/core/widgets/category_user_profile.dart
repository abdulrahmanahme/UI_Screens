import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui/core/app_color.dart';

class CategoryUserProfile extends StatelessWidget {
  const CategoryUserProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        children: [
          CategoryItem(
            icon: Icons.wallet,
            title: 'Physical activity',
            des: '2 days ago',
          ),
          CategoryItem(
            icon: Icons.wallet,
            title: 'Satiates',
            des: 'This year :109 killometers',
          ),
          CategoryItem(
            icon: Icons.wallet,
            title: 'Physical activity',
            des: '2 days ago',
          ),
          CategoryItem(
            icon: Icons.wallet,
            title: 'Routes',
            des: '7',
          ),
          CategoryItem(
            icon: Icons.wallet,
            title: 'Physical activity',
            des: '2 days ago',
            isLast: true,
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {super.key,
      required this.title,
      required this.des,
      required this.icon,
      this.isLast = false});
  final String title;
  final String des;
  final IconData icon;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          InkWell(
            onTap: (){},
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 25,
                  color: AppColor.blackColor,
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 15,
                        color: AppColor.blackColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      des,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                InkWell(
                  onTap: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          if (!isLast)
            Divider(
              endIndent: 20,
              thickness: 1,
              color: Colors.grey.shade400,
            )
        ],
      ),
    );
  }
}
