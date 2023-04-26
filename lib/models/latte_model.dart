import 'package:equatable/equatable.dart';

class Latte extends Equatable {
  final String image;
  final String description;
  final String price;
  final String rating;
  final List moreDescription;
  final String about;
  Latte({
    required this.image,
    required this.description,
    required this.price,
    required this.rating,
    required this.moreDescription,
    required this.about,
  });
  static List<Latte> lattes = [
    Latte(
      image:
          "https://images.unsplash.com/photo-1582152747136-af63c112fce5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bGF0dGUlMjBjb2ZmZWV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      description: "with chocolate",
      price: "\$4.99",
      rating: "4.5",
      moreDescription: const ["coffee", "chocolate", "medium roasted"],
      about:
          " Latte is a coffee-based drink made primarily from espresso and milk, and it is a popular coffee drink that originated in Italy. The name comes from the Capuchin friars, referring to the colour of their habits, and in this context referring to the colour of the beverage when milk is added in small portion to dark, brewed coffee (today mostly espresso). The physical appearance of a modern cappuccino with espresso créma and steamed milk is a result of a long evolution of the drink. The Viennese bestowed the name 'Kapuziner' possibly in the 18th century on a version that included whipped cream and spices of unknown origin. The Italian cappuccino was unknown until the 1930s, and seems to be born out of Viennese-style cafés in Trieste and other cities in the former Austria in the first decades of the 20th century.",
    ),
    Latte(
      image:
          "https://images.unsplash.com/photo-1519532059956-a63a37af5deb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGxhdHRlJTIwY29mZmVlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      description: "with hot milk",
      price: "\$5.99",
      rating: "4.5",
      moreDescription: const ["coffee", "milk", "medium roasted"],
      about:
          " Latte is a coffee-based drink made primarily from espresso and milk, and it is a popular coffee drink that originated in Italy. The name comes from the Capuchin friars, referring to the colour of their habits, and in this context referring to the colour of the beverage when milk is added in small portion to dark, brewed coffee (today mostly espresso). The physical appearance of a modern cappuccino with espresso créma and steamed milk is a result of a long evolution of the drink. The Viennese bestowed the name 'Kapuziner' possibly in the 18th century on a version that included whipped cream and spices of unknown origin. The Italian cappuccino was unknown until the 1930s, and seems to be born out of Viennese-style cafés in Trieste and other cities in the former Austria in the first decades of the 20th century.",
    ),
    Latte(
      image:
          "https://images.unsplash.com/photo-1602320574582-741740d4fcd7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGNhcHB1Y2Npbm98ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      description: "with hot water",
      price: "\$4.99",
      rating: "4.5",
      moreDescription: const ["coffee", "water", "add on cream"],
      about:
          " Latte is a coffee-based drink made primarily from espresso and milk, and it is a popular coffee drink that originated in Italy. The name comes from the Capuchin friars, referring to the colour of their habits, and in this context referring to the colour of the beverage when milk is added in small portion to dark, brewed coffee (today mostly espresso). The physical appearance of a modern cappuccino with espresso créma and steamed milk is a result of a long evolution of the drink. The Viennese bestowed the name 'Kapuziner' possibly in the 18th century on a version that included whipped cream and spices of unknown origin. The Italian cappuccino was unknown until the 1930s, and seems to be born out of Viennese-style cafés in Trieste and other cities in the former Austria in the first decades of the 20th century.",
    ),
    Latte(
      image:
          "https://plus.unsplash.com/premium_photo-1671559020936-680ad4d3d2fc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8bGF0dGUlMjBjb2ZmZWV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      description: "with lemon",
      price: "\$4.32",
      rating: "4.7",
      moreDescription: const ["coffee", "lemon", "less sugar"],
      about:
          " Latte is a coffee-based drink made primarily from espresso and milk, and it is a popular coffee drink that originated in Italy. The name comes from the Capuchin friars, referring to the colour of their habits, and in this context referring to the colour of the beverage when milk is added in small portion to dark, brewed coffee (today mostly espresso). The physical appearance of a modern cappuccino with espresso créma and steamed milk is a result of a long evolution of the drink. The Viennese bestowed the name 'Kapuziner' possibly in the 18th century on a version that included whipped cream and spices of unknown origin. The Italian cappuccino was unknown until the 1930s, and seems to be born out of Viennese-style cafés in Trieste and other cities in the former Austria in the first decades of the 20th century.",
    ),
  ];
  @override
  List<Object?> get props => [image, description, price, rating, about];
}
