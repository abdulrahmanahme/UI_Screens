
import 'package:flutter/material.dart';
import 'package:ui/core/app_color.dart';

class CustomAppBarYogaScreen extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarYogaScreen(
      {super.key,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(
                Icons.arrow_back_ios_rounded,
                size: 17,
                color: Colors.black87,
              ),
            ),
          ),
          const Spacer(),
       
          InkWell(
            onTap: (){},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  width: 1,
                  color: Colors.grey.shade300,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.upload,
                  size: 30,
                  color: Colors.black87,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 100);
}
