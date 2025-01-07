
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
    this.onTap,
    this.title,
    this.image,
    this.des,
  });
  final String? title;
  final String? image;

  final String? des;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(image ??
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9SRRmhH4X5N2e4QalcoxVbzYsD44C-sQv-w&s'),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title ?? 'Hello , Abdo',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            Text(
              des ?? 'Lets find the best hotel',
              style:const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                  color: Colors.white),
            ),
          ],
        ),
        const Spacer(),
        InkWell(
          onTap: onTap,
          child: const CircleAvatar(
            radius: 30,
            backgroundColor: Color(0xff1E2434),
            child: Icon(
              Icons.edit_notifications_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }
}
