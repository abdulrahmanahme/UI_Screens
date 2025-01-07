import 'package:flutter/material.dart';

class TravelScreen extends StatelessWidget {
  const TravelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(children: [
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            spacing: 5,
            children: [
              Expanded(child: SearchBarWidget()),
              CardIcons(
                icon: Icons.camera,
              ),
              CardIcons(
                icon: Icons.shopping_bag,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 110,
          width: double.infinity,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.all(5.0),
              child: CardImage(
                image:
                    'https://mediaaws.almasryalyoum.com/news/verylarge/2022/05/21/1809206_0.jpg',
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'For you All New to yout next level',
            textAlign: TextAlign.start,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 2.0,
                mainAxisSpacing: .8,
                childAspectRatio: .68,
              ),
              // padding: const EdgeInsets.all(5.0),
              itemCount: 20,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.all(2.0),
                  child: ProductCard(
                    image:
                        'https://mediaaws.almasryalyoum.com/news/verylarge/2022/05/21/1809206_0.jpg',
                    title: 'Custom Text',
                    price: '85',
                    des: 'Uri',
                  ),
                );
              },
            ),
          ),
        ),
      ])),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.image,
      required this.title,
      required this.price,
      required this.des});
  final String image;
  final String title;
  final String price;
  final String des;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 178,
          width: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
            ),

            borderRadius: BorderRadius.circular(10.0), // Rounded corners
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  title,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14, // Font size
                    fontWeight: FontWeight.w400, // Font weight
                    color: Colors.white, // Text color
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.favorite_border,
                  size: 20,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
            // const SizedBox(
            //   height: 5,
            // ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  price + r'$',
                  // maxLines: 2,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 18, // Font size
                    fontWeight: FontWeight.w400, // Font weight
                    color: Colors.white, // Text color
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.more_horiz,
                  size: 22,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
            Text(
              des,
              style: const TextStyle(
                fontSize: 15,
                height: .7,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CardImage extends StatelessWidget {
  const CardImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 110,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),

        borderRadius: BorderRadius.circular(10.0), // Rounded corners
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Custom Text',
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14, // Font size
              fontWeight: FontWeight.w400, // Font weight
              color: Colors.black, // Text color
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class CardIcons extends StatelessWidget {
  const CardIcons({super.key, required this.icon});
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade600,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        child: Icon(
          icon,
          size: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Search ",
        hintStyle: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.w300, fontSize: 15),
        fillColor: const Color(0xff3D3D3E),
        filled: true,
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.grey,
          size: 30,
        ),
        suffixIcon: const Icon(
          Icons.filter,
          color: Colors.grey,
          size: 20,
        ),
        focusedBorder: OutlineInputBorder(
          // Error border
          borderSide: const BorderSide(
            color: Colors.red,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        enabledBorder: OutlineInputBorder(

          borderRadius: BorderRadius.circular(10.0),
        ),
        errorBorder: OutlineInputBorder(
          // Error border
          borderSide: const BorderSide(
            color: Colors.red,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Field cannot be empty';
        }
        return null;
      },
    );
  }
}
