import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
    required this.tabs,
    required this.icons,
  });

  final List<String> tabs;
  final List<IconData> icons;

  @override
  Widget build(BuildContext context) {
    return Material(
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
    );
  }
}
