import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

    return DefaultTabController(
      initialIndex: 0,
      length: tabs.length,
      child: Scaffold(
        appBar: const _CustomAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const _Discover(),
              _Categories(tabs: tabs, icons: icons),
            ],
          ),
        ),
        bottomNavigationBar: _CustomBottomNavigationBar(),
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const _CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
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
    final cappuccino = Cappuccino.cappuccinos;
    final latte = Latte.lattes;
    final espresso = Espresso.espressos;
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
          CustomTabBar(tabs: tabs, icons: icons),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: TabBarView(children: [
              ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cappuccino.length,
                itemBuilder: (context, index) {
                  return CoffeeCard(
                      title: tabs[0],
                      description: cappuccino[index].description,
                      price: cappuccino[index].price,
                      imageUrl: cappuccino[index].image);
                },
              ),
              ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: latte.length,
                itemBuilder: (context, index) {
                  return CoffeeCard(
                      title: tabs[1],
                      description: latte[index].description,
                      price: latte[index].price,
                      imageUrl: latte[index].image);
                },
              ),
              ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: espresso.length,
                itemBuilder: (context, index) {
                  return CoffeeCard(
                      title: tabs[2],
                      description: espresso[index].description,
                      price: espresso[index].price,
                      imageUrl: espresso[index].image);
                },
              ),
            ]),
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
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 161, 72, 39),
                  borderRadius:
                      BorderRadius.circular(20), // half of the width or height
                ),
                child: const Icon(
                  Icons.tune,
                  color: Colors.white,
                ),
              ),
              filled: true,
              fillColor: Colors.grey.shade100,
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
