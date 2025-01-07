import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
    this.onTap
  });
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: const Color(0xff1E2434),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.search,
                    size: 25,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Search for hotel',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w200,
                        color: Colors.white,),
                  ),
                ],
              ),
            ),
          ),
        ),
       const SizedBox(
          width: 5,
        ),
      //  const Spacer(),
        InkWell(
          onTap: onTap,
          child: const CircleAvatar(
            radius: 30,
            backgroundColor: Color(0xff1E2434),
            child: Icon(
              Icons.filter_list,
              color: Colors.white,
              size: 25,
            ),
          ),
        ),
      ],
    );
  }
}
