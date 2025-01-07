import 'package:flutter/material.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height * .6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffd53228),
                      Colors.black87,
                      Color(0xffd53228)
                    ],
                    stops: [1.0, .0, 1.0],
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          const Text(
                            'TOP MOVIES',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: const Color(0xff0b0b0b),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 17,
                                vertical: 8,
                              ),
                              child: InkWell(
                                onTap: () {},
                                child: const Text(
                                  'See all',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * .1,
                        child: Container(
                          height: MediaQuery.of(context).size.height * .4,
                          width: MediaQuery.of(context).size.width,
                          child: Stack(
                            fit: StackFit.passthrough,
                            children: [
                           
                            
                            ...List.generate(
                              4,
                              (index) => buildContainer(index, context),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildContainer(int index, context) {
    switch (index) {
      case 0:
        return Positioned(
          top: 105,
          left: 160,
          child: Container(
            height: 150,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSqouV4UMg5NsixH1sZU3tHngnsXrL-X92bA&s'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      case 1:
        return Positioned(
          top: 80,
          left: 120,
          child: Container(
            height: 200,
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeAHfgTc4FwHCHHHaXyY714A0UcMoMNEkyrw&s'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      case 2:
        return Positioned(
          top: 50,
          child: Container(
            height: 250,
            width: 230,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4GlfaINxWk9BGfBtRpYOox4uLC4da_dovOw&s'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      default:
        return Positioned(
          top: 50,
          child: Container(
            height: 250,
            width: 230,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4GlfaINxWk9BGfBtRpYOox4uLC4da_dovOw&s'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
    }
  }
}

//  Positioned(
//                         top: MediaQuery.of(context).size.height * .1,
//                         // left: 2,
//                         child: Container(
//                           height: MediaQuery.of(context).size.height * .34,
//                           width: MediaQuery.of(context).size.width * .6,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(25),
//                             image: const DecorationImage(
//                               image: NetworkImage(
//                                   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4GlfaINxWk9BGfBtRpYOox4uLC4da_dovOw&s'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),