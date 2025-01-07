import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HiderWidget extends StatelessWidget {
  const HiderWidget({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Row(
        children: [
          InkWell(
            onTap: onTap,
            child: const CircleAvatar(
              radius: 25,
              backgroundColor: Color(0xff1E2434),
              child: Icon(
                Icons.arrow_back,
                color: Colors.grey,
                size: 25,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          const Text(
            'Hotel information',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
