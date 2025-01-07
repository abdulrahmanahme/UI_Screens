
import 'package:flutter/material.dart';

class RecommendedTripeWidget extends StatelessWidget {
  const RecommendedTripeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xff1E2434),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 158,
              width: double.infinity,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      'https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 15,
                    left: 15,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          // color: Colors.white70,
                          border: Border.all(width: 1, color: Colors.white)),
                      child: const Center(
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 7, horizontal: 7),
                          child: Text(
                            '35% per neight',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    right: 20,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          // color: Colors.white70,
                          border: Border.all(width: 1, color: Colors.white)),
                      child: const Padding(
                        padding: EdgeInsets.all(7.0),
                        child: Icon(
                          Icons.edit_notifications_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 5,),

            Spacer(),

            Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recommend for your tripe',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),

                    Row(
                      children: [
                        Icon(
                          Icons.location_city_rounded,
                          color: Colors.green,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Recommend for your tripe',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    // Spacer(),
                  ],
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.green,
                    // border: Border.all(width: 1, color: Colors.white)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),

            // SizedBox(height: 5,)
          ],
        ),
      ),
    );
  }
}
