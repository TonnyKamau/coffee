import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/model.dart';
import '../widgets/widget.dart';

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
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Center(
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back_ios),
                color: Colors.black,
                iconSize: 15,
              ),
            ),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Center(
                child: IconButton(
                  onPressed: () {
                    print('Favorite');
                  },
                  icon: const Icon(Icons.favorite_border),
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        extendBodyBehindAppBar: true,
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            _NewsHeader(coffee: coffee),
          ],
        ));
  }
}

class _NewsHeader extends StatelessWidget {
  const _NewsHeader({
    Key? key,
    required this.coffee,
  }) : super(key: key);

  final Coffee coffee;

  @override
  Widget build(BuildContext context) {
    return ImageContainer(
      height: MediaQuery.of(context).size.height * 0.45,
      width: double.infinity,
      rating: '',
      padding: const EdgeInsets.all(20.0),
      imageUrl: coffee.image,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTag(backgroundColor: Colors.grey.withAlpha(150), children: [
            Text('News of the Day',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white)),
          ]),
          const SizedBox(height: 10.0),
          Text(coffee.type,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                  height: 1.25,
                  color: Colors.white)),
          TextButton(
            onPressed: () {
              print('Read More');
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            child: Row(
              children: [
                Text(
                  'Read More',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white),
                ),
                const SizedBox(width: 10.0),
                const Icon(Icons.arrow_forward_ios,
                    color: Colors.white, size: 15.0),
              ],
            ),
          )
        ],
      ),
    );
  }
}
