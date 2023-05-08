import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/coffee', page: () => const CoffeeScreen()),
      ],
      title: 'Coffee Shop',
      theme: ThemeData(
        // is not restarted
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
