import 'dart:async';

import 'package:coffee/screens/navigation_screen.dart';
import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController controller = PageController();
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    startAutoScroll();
  }

  int currentPageIndex = 0;
  List onBoardingData = [
    {
      'title': 'Coffee so good your taste buds will love it',
      'description':
          'The best grain, the finest roast, the most powerful flavor',
    },
    {
      'title': 'Our coffee is made with love and passion',
      'description': 'We are a team of dedicated people who love what we do',
    },
    {
      'title': 'Order your coffee and get it delivered to your door',
      'description': 'The more you order, the more you save on delivery',
    },
  ];

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void startAutoScroll() {
    Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (currentPageIndex < onBoardingData.length - 1) {
        currentPageIndex++;
      } else {
        currentPageIndex = 0;
      }
      controller.animateToPage(
        currentPageIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1564149504817-d1378368526f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTQ0fHxjb2ZmZWV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
          fit: BoxFit.cover,
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 14, 12, 17),
            Color(0xFF201F22),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    PageView.builder(
                      itemCount: onBoardingData.length,
                      controller: controller,
                      itemBuilder: (context, index) {
                        return _MoreBoard(
                          title: onBoardingData[index]['title'],
                          description: onBoardingData[index]['description'],
                        );
                      },
                      onPageChanged: (int index) {
                        setState(() {
                          currentPageIndex = index;
                        });
                      },
                    ),
                    Container(
                      alignment: const Alignment(0, 0.8),
                      child: SmoothPageIndicator(
                        controller: controller,
                        count: onBoardingData.length,
                        effect: ExpandingDotsEffect(
                          activeDotColor: Colors.green.shade800,
                          dotColor: Colors.grey.shade600,
                          dotHeight: 8,
                          dotWidth: 8,
                          spacing: 5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(bottom: 20.0, left: 20, right: 20),
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.green.shade800,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation:
                          4, // Set the elevation to match the container's elevation
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      backgroundColor: Colors
                          .green.shade800, // Set the button's background color
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          transitionDuration: const Duration(milliseconds: 500),
                          pageBuilder: (_, __, ___) => const NavigationScreen(),
                          transitionsBuilder: (_, animation, __, child) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10,
                      ),
                      child: Center(
                        child: Text(
                          'Get Started',
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MoreBoard extends StatelessWidget {
  final String title;
  final String description;
  const _MoreBoard({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.45),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Text(title,
              maxLines: 3,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  )),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Text(
            description,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                  height: 1.5,
                ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
