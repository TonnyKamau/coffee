import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../models/model.dart';

class CoffeeScreen extends StatelessWidget {
  const CoffeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Coffee coffee = Get.arguments ?? Coffee.coffees[0];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: Container(
            margin: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const FaIcon(FontAwesomeIcons.angleLeft),
                color: Colors.black,
                iconSize: 20,
              ),
            ),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: IconButton(
                  onPressed: () {
                    print('Favorite');
                  },
                  icon: const FaIcon(FontAwesomeIcons.heart),
                  color: Colors.black,
                  iconSize: 20,
                ),
              ),
            ),
          ],
        ),
        extendBodyBehindAppBar: true,
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            _CoffeeHeader(coffee: coffee),
            _CoffeeBody(coffee: coffee),
          ],
        ));
  }
}

class _CoffeeBody extends StatefulWidget {
  const _CoffeeBody({
    Key? key,
    required this.coffee,
  }) : super(key: key);
  final Coffee coffee;

  @override
  State<_CoffeeBody> createState() => _CoffeeBodyState();
}

class _CoffeeBodyState extends State<_CoffeeBody> {
  bool _showOverflow = false;
  @override
  Widget build(BuildContext context) {
    List<String> sizes = [
      "Small",
      "Medium",
      "Large",
    ];
    return DefaultTabController(
      initialIndex: 0,
      length: sizes.length,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5),
              padding: const EdgeInsets.all(5.0),
              height: MediaQuery.of(context).size.height * 0.09,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: widget.coffee.moreDescription.length,
                  itemBuilder: (context, index) {
                    String title = widget.coffee.moreDescription[index];
                    String styledTitle = title.substring(0, 1).toUpperCase() +
                        title.substring(1);
                    return _TasteProfile(
                      title: styledTitle,
                      icon: widget.coffee.moreIcons[index],
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
              child: Text(
                'Coffee Size',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Material(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: TabBar(
                  splashFactory: NoSplash.splashFactory,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.green.shade800,
                  ),
                  labelPadding: const EdgeInsets.symmetric(horizontal: 20.0),
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.white,
                  tabs: sizes
                      .map(
                        (e) => Tab(
                          text: e,
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                'About',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _showOverflow = !_showOverflow;
                  });
                },
                child: Text(
                  widget.coffee.about,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    height: 1.5,
                  ),
                  maxLines: _showOverflow ? null : 3,
                  overflow: _showOverflow ? null : TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            if (!_showOverflow)
              TextButton(
                onPressed: () {
                  setState(() {
                    _showOverflow = true;
                  });
                },
                child: Text(
                  'Read More',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.green.shade800,
                      ),
                ),
              ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green.shade800,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Add to Cart',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      Container(
                          width: 2,
                          height: 20,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20))),
                      Text(
                        widget.coffee.price,
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TasteProfile extends StatelessWidget {
  const _TasteProfile({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final FaIcon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FaIcon(
              icon.icon,
              color: const Color.fromRGBO(161, 72, 39, 1),
              size: 15,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
                width: 2,
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(20)))
          ],
        ),
      ),
    );
  }
}

class _CoffeeHeader extends StatelessWidget {
  const _CoffeeHeader({
    Key? key,
    required this.coffee,
  }) : super(key: key);

  final Coffee coffee;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black.withOpacity(0.7),
            Colors.black.withOpacity(0.4),
            Colors.black.withOpacity(0.1),
            Colors.transparent,
          ],
        ),
        image: DecorationImage(
          image: NetworkImage(coffee.image),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(coffee.type,
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      height: 1.25,
                      color: Colors.white)),
              _RatingTag(coffee: coffee),
            ],
          ),
          Text(
            coffee.description,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class _RatingTag extends StatelessWidget {
  const _RatingTag({
    Key? key,
    required this.coffee,
  }) : super(key: key);

  final Coffee coffee;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 50,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(161, 72, 39, 0.7),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.star,
            size: 12,
            color: Colors.white,
          ),
          const SizedBox(
            width: 2,
          ),
          Text(
            coffee.rating,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
