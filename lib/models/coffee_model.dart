import 'package:equatable/equatable.dart';

class CoffeeModel extends Equatable {
  String name;
  String image;
  String description;
  String price;
  String rating;

  CoffeeModel(
      {required this.name,
      required this.image,
      required this.description,
      required this.price,
      required this.rating});

  static List<CoffeeModel> list = [
    CoffeeModel(
        name: "Cappuccino",
        image:
            "https://images.unsplash.com/photo-1572442388796-11668a67e53d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y2FwcHVjY2lub3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        description:
            "Cappuccino is a coffee-based drink made primarily from espresso and milk.",
        price: "4.99",
        rating: "4.5"),
    CoffeeModel(
        name: "Espresso",
        image:
            "https://images.unsplash.com/photo-1611691934391-5a8805e0bd1a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGVzcHJlc3NvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        description:
            "Espresso is a coffee-based drink made primarily from espresso and milk.",
        price: "3.99",
        rating: "4.0"),
    CoffeeModel(
        name: "Latte",
        image:
            "https://images.unsplash.com/photo-1582152747136-af63c112fce5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bGF0dGUlMjBjb2ZmZWV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
        description:
            "Latte is a coffee-based drink made primarily from espresso and milk.",
        price: "5.99",
        rating: "4.8"),
    CoffeeModel(
        name: "Mocha",
        image:
            "https://images.unsplash.com/photo-1600056781444-55f3b64235e3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bW9jaGF8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
        description:
            "Mocha is a coffee-based drink made primarily from espresso and milk.",
        price: "6.99",
        rating: "4.9"),
    CoffeeModel(
        name: "Macchiato",
        image:
            "https://images.unsplash.com/photo-1485808191679-5f86510681a2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFjY2hpYXRvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        description:
            "Macchiato is a coffee-based drink made primarily from espresso and milk.",
        price: "7.99",
        rating: "4.7"),
    CoffeeModel(
        name: "Americano",
        image:
            "https://images.unsplash.com/photo-1551030173-122aabc4489c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YW1lcmljYW5vJTIwY29mZmVlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        description:
            "Americano is a coffee-based drink made primarily from espresso and milk.",
        price: "8.99",
        rating: "4.6"),
    CoffeeModel(
        name: "Affogato",
        image:
            "https://images.unsplash.com/photo-1648748005953-3254b4adf51b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGFmZm9nYXRvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        description:
            "Affogato is a coffee-based drink made primarily from espresso and milk.",
        price: "9.99",
        rating: "4.4"),
  ];
  @override
  List<Object?> get props => [name, image, description, price, rating];
}
