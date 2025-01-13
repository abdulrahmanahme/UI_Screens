import 'package:flutter/material.dart';

class TripeGideScreen extends StatelessWidget {
  const TripeGideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const HiderWidget(
              userName: 'Abdo',
              image:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqcVXIgWCvTbb55lDj91N_g2rd0F3rma21CA&s',
            ),
            const SizedBox(
              
              height: 15,
            ),
            const SearchBarWidget(),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Select your next tripe',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  child: TripeCardWidget(
                    tripeTitle: 'Asa',
                  ),
                ),
                itemCount: 10,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: TripeCardImageWidget(
                title: 'Egypt',
                image:
                    'https://i.pinimg.com/474x/23/dd/93/23dd931632a8d0cfd307e68917e07d14.jpg',
                des: 'test',
                rate: '57.5',
                numberOfReviews: '6',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Spacer(),
            const NavBarWidget(),
            const SizedBox(
              height: 30,
            ),
          ],
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Search ",
          hintStyle: const TextStyle(
              color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 15),
          fillColor: Colors.white,
          filled: true,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          isDense: true,
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
            size: 30,
          ),
          suffixIcon: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.filter_list,
                color: Colors.grey,
                size: 20,
              ),
            ),
          ),
          focusedBorder: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(25.0),
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
      ),
    );
  }
}

class TripeCardImageWidget extends StatelessWidget {
  const TripeCardImageWidget({
    super.key,
    required this.title,
    required this.image,
    required this.des,
    required this.rate,
    required this.numberOfReviews,
  });
  final String title;
  final String image;

  final String des;
  final String rate;
  final String numberOfReviews;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        // fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(image,
                height: 300, width: 300, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              // spacing: 5,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  des,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 5,
                  children: [
                    RateWidget(
                      rate: rate,
                    ),
                    Text(
                      numberOfReviews + ' revievws',
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const SeeMoreWidget(),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          const Positioned(
            top: 10,
            right: 10,
            child: Icon(
              Icons.filter_list,
              color: Colors.grey,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        // height: 22,
        // width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.black.withOpacity(0.6),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 8),
          child: Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                  5,
                  (index) => Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Icon(
                            Icons.home,
                            color: Colors.black38,
                            size: 22,
                          ),
                        ),
                      )),
            ],
          ),
        ),
      ),
    );
  }
}

class SeeMoreWidget extends StatelessWidget {
  const SeeMoreWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 22,
      // width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.black.withOpacity(0.6),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
        child: Row(
          children: [
            const Spacer(),
            const Text(
              'See More',
              maxLines: 2,
              style: TextStyle(
                fontSize: 15,
                overflow: TextOverflow.ellipsis,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black38,
                  size: 22,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RateWidget extends StatelessWidget {
  const RateWidget({super.key, required this.rate});
  final String rate;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.white, // Border color
          width: 1.0,
        ),
        // color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          children: [
            const Icon(
              Icons.star,
              color: Colors.grey,
              size: 15,
            ),
            const Spacer(),
            Expanded(
              child: Text(
                rate,
                maxLines: 2,
                style: const TextStyle(
                  fontSize: 15,
                  overflow: TextOverflow.ellipsis,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TripeCardWidget extends StatelessWidget {
  const TripeCardWidget({
    super.key,
    required this.tripeTitle,
  });
  final String tripeTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Text(
          tripeTitle,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

class HiderWidget extends StatelessWidget {
  const HiderWidget({
    super.key,
    required this.userName,
    required this.image,
  });
  final String userName;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello,$userName',
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                'Welcome to Tripe Gide',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const Spacer(),
          CircleAvatar(
            radius: 22,
            backgroundImage: NetworkImage(image),
          ),
        ],
      ),
    );
  }
}
