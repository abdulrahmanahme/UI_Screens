import 'package:flutter/material.dart';
import 'package:ui/view/home/ui4/screen/widgets/hider_widget.dart';
import 'package:ui/view/home/ui4/screen/widgets/hotel_Info_body_widget.dart';

class HotelInfoScreen extends StatelessWidget {
  const HotelInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff121A27),
        body: Column(
          children: [
            HiderWidget(),
            // SizedBox(
            //   height: 10,
            // ),
            HotelInfoBodyWidget()
          ],
        ),
      ),
    );
  }
}
