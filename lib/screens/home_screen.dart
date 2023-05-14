import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../models/model.dart';
import '../widgets/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> tabs = [
      "Cappuccino",
      "Latte",
      "Espresso",
    ];

    List<IconData> icons = [
      Icons.local_cafe,
      Icons.coffee_rounded,
      Icons.coffee_maker,
    ];
    final promotions = Promotion.promotions;
    return DefaultTabController(
      initialIndex: 0,
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: const Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1504384764586-bb4cdc1707b0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bmVyZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: IconButton(
                onPressed: () {},
                icon: FaIcon(
                  FontAwesomeIcons.bell,
                  color: Colors.grey.shade500,
                ),
              ),
            ),
          ],
          title: const BarTitle(),
        ),
        body: ListView(
          children: [
            const _Discover(),
            _Categories(tabs: tabs, icons: icons),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    'Special offer',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const FaIcon(
                    FontAwesomeIcons.fire,
                    color: Colors.red,
                  )
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: promotions.length,
              itemBuilder: (context, index) {
                return PromotionCard(
                  category: promotions[index].categories,
                  description: promotions[index].description,
                  image: promotions[index].imageUrl,
                );
              },
            ),
          ],
        ),
        bottomNavigationBar: const _CustomBottomNavigationBar(),
      ),
    );
  }
}

class _Categories extends StatelessWidget {
  const _Categories({
    Key? key,
    required this.tabs,
    required this.icons,
  }) : super(key: key);

  final List<String> tabs;
  final List<IconData> icons;

  @override
  Widget build(BuildContext context) {
    final coffee = Coffee.coffees;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Categories",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(
            height: 20,
          ),
          Material(
            color: Colors.transparent,
            child: TabBar(
              splashFactory: NoSplash.splashFactory,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.green.shade800,
              ),
              unselectedLabelColor: Colors.black,
              labelColor: Colors.white,
              tabs: tabs
                  .map(
                    (e) => Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            icons[tabs.indexOf(e)],
                          ),
                          const SizedBox(width: 10),
                          Text(e,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.37,
            child: TabBarView(
                children: tabs.map((e) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coffee.length,
                itemBuilder: (context, index) {
                  if (coffee[index].type == e) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: InkWell(
                        onTap: () {
                          Get.toNamed('/coffee', arguments: coffee[index]);
                        },
                        child: CoffeeCard(
                          title: coffee[index].type,
                          description: coffee[index].description,
                          price: coffee[index].price,
                          imageUrl: coffee[index].image,
                          rating: coffee[index].rating,
                        ),
                      ),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              );
            }).toList()),
          ),
        ],
      ),
    );
  }
}

class _Discover extends StatelessWidget {
  const _Discover({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Good Morning, Tony",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              hintText: "Search Coffee",
              hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.grey.shade500,
                  ),
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              suffixIcon: Container(
                margin: const EdgeInsets.only(right: 5, bottom: 5, top: 5),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(177, 114, 53, 31),
                  borderRadius:
                      BorderRadius.circular(20), // half of the width or height
                ),
                child: const Icon(
                  Icons.tune,
                  color: Colors.white,
                ),
              ),
              filled: true,
              fillColor: Colors.grey.shade200,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomBottomNavigationBar extends StatelessWidget {
  const _CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: Colors.green.shade800,
      unselectedItemColor: Colors.grey.shade500,
      items: const [
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.house),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.heart),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.cartShopping),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.user),
          label: 'Profile',
        ),
      ],
      currentIndex: 0,
    );
  }
}
