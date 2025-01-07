import 'package:flutter/material.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              const HiderWidget(),
              const SizedBox(
                height: 12,
              ),
              const SearchWidget(),
              const SizedBox(
                height: 10,
              ),
              const CategoryTitle(
                title: 'Offers',
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 140,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: CardFood(
                      title: 'Pizza',
                      image:
                          'https://www.thedeepseafood.com/static/website/assets/general/images/impoted.jpg',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const CategoryTitle(
                title: 'Offers',
              ),
              
              // SizedBox(
              //   height: MediaQuery.of(context).size.height,
              //   child: ListView.builder(
              //     padding: const EdgeInsets.symmetric(horizontal: 8),
              //     scrollDirection: Axis.vertical,
              //     itemCount: 10,
              //     itemBuilder: (context, index) => const Padding(
              //       padding: EdgeInsets.all(5.0),
              //       child: OffersCard(
              //         titleFood: 'Osama Sushi',
              //         des: 'Best Sushi',
              //         time: '45-44 min',
              //         image:
              //             'https://www.thedeepseafood.com/static/website/assets/general/images/impoted.jpg',
              //       ),
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: OffersCard(
                  titleFood: 'Osama Sushi',
                  des: 'Best Sushi',
                  time: '45-44 minsssssss',
                  image:
                      'https://www.thedeepseafood.com/static/website/assets/general/images/impoted.jpg',
                ),
              ),
              const CategoryTitle(
                title: 'All Restraint',
              ),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: OffersCard(
                  titleFood: 'Osama Sushi',
                  des: 'Best Sushi',
                  time: '45-44 minsssssss',
                  image:
                      'https://www.thedeepseafood.com/static/website/assets/general/images/impoted.jpg',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OffersCard extends StatelessWidget {
  const OffersCard(
      {super.key,
      required this.image,
      required this.titleFood,
      required this.des,
      required this.time});
  final String image;
  final String titleFood;
  final String des;
  final String time;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      width: double.infinity,
      child: Stack(
        children: [
          CardOffer(image: image, titleFood: titleFood, time: time, des: des),
          const Positioned(
            top: 10,
            left: 10,
            child: DiscountCard(
              discountDes: 'Disscount 10%',
            ),
          ),
        ],
      ),
    );
  }
}

class CardOffer extends StatelessWidget {
  const CardOffer({
    super.key,
    required this.image,
    required this.titleFood,
    required this.time,
    required this.des,
  });

  final String image;
  final String titleFood;
  final String time;
  final String des;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              height: 150,
              width: double.infinity,
              image,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      titleFood,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    const Spacer(),
                    Text(
                      time,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    const Icon(
                      Icons.star_rate,
                      color: Colors.amber,
                      size: 20,
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      des,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                    const Spacer(),
                    Text(
                      time,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DiscountCard extends StatelessWidget {
  const DiscountCard({super.key, required this.discountDes});
  final String discountDes;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            const Icon(
              Icons.takeout_dining,
              size: 15,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              discountDes,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

class CardFood extends StatelessWidget {
  const CardFood({super.key, required this.image, required this.title});
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            height: 100,
            width: 100,
            image,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ],
    );
  }
}

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: const Text(
              'See All',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.deepPurple),
            ),
          ),
        ],
      ),
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.shade300,
          // labelText: 'Enter text',
          hintText: 'Search in ....',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

class HiderWidget extends StatelessWidget {
  const HiderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          const Text(
            'Legionow',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.deepPurple),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu_open,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
