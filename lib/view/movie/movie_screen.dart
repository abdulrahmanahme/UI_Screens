import 'package:flutter/material.dart';
class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black45,
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const HiderWidget(),
            const CategoryTitle(
              title: 'Top views',
            ),
            const SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              child: Image.network(
                height: 150,
                width: 300,
                'https://cdn11.bigcommerce.com/s-ydriczk/images/stencil/1500x1500/products/89058/93685/Joker-2019-Final-Style-steps-Poster-buy-original-movie-posters-at-starstills__62518.1669120603.jpg?c=2',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const CategoryTitle(
              title: 'Top Catagory',
            ),
            SizedBox(
              height: 75,
              child: ListView.builder(
                itemCount: 10,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CategoryCard(
                    section: '😎',
                    type: 'Actions',
                  ),
                ),
              ),
            ),
            const CategoryTitle(
              title: 'New movies',
            ),
            Container(
              color: Colors.amberAccent,
              height: 250,
              child: ListView.builder(
                itemCount: 10,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: MoviesCard(
                    rate: '4/5',
                    title: 'Doune',
                    type: 'Action',
                    image:
                        'https://cdn.shopify.com/s/files/1/0830/9575/files/dune-part-two-movie-poster-matt-ferguson_ac86f8c9-f410-450c-805b-c4352aac4a55_540x.jpg?v=1730814717',
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MoviesCard extends StatelessWidget {
  const MoviesCard(
      {super.key,
      required this.type,
      required this.image,
      required this.title,
      required this.rate});
  final String type;
  final String image;
  final String title;
  final String rate;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueGrey,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            height: 150,
            fit: BoxFit.cover,
            width: double.infinity,
            image,
          ),
          const SizedBox(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
                Row(
                  children: [
                    Text(
                      type,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    ),
                    const Spacer(),
                    Text(
                      rate,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),
                    const Icon(
                      Icons.star_rate,
                      color: Colors.amber,
                      size: 15,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const WatchButton(
                  title: 'Watch Now',
                ),
                const SizedBox(
                  height: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WatchButton extends StatelessWidget {
  const WatchButton({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.red,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.type,
    required this.section,
  });
  final String section;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueGrey,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 8),
        child: Column(
          children: [
            Text(
              section,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              type,
              style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 2,
            ),
          ],
        ),
      ),
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
          const SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w300, color: Colors.white),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: const Text(
              'See all',
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w400, color: Colors.red),
            ),
          ),
        ],
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
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu_open,
              size: 25,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
