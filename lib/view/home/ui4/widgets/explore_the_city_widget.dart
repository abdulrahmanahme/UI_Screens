import 'package:flutter/material.dart';

class ExploreTheCityWidget extends StatelessWidget {
  const ExploreTheCityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            //  height: 65,
            //  width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 1, color: const Color(0xff3B4350))),
            child: Row(
              children: [
                const Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: CircleAvatar(
                    radius: 24,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9SRRmhH4X5N2e4QalcoxVbzYsD44C-sQv-w&s'),
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  index == 2 ? 'Thailined' : 'Dubai',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
