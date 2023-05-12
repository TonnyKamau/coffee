import 'package:equatable/equatable.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Coffee extends Equatable {
  final String image;
  final String description;
  final String price;
  final String rating;
  final List moreDescription;
  final String about;
  final String type;
  final List<FaIcon> moreIcons;
  Coffee({
    required this.image,
    required this.description,
    required this.price,
    required this.rating,
    required this.moreDescription,
    required this.about,
    required this.type,
    required this.moreIcons,
  });
  static List<Coffee> coffees = [
    Coffee(
      type: 'Espresso',
      image:
          "https://images.unsplash.com/photo-1485808191679-5f86510681a2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8ZXhwcmVzc28lMjBjb2ZmZWV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      description: "with chocolate",
      price: "\$4.99",
      rating: "4.5",
      moreDescription: const ["coffee", "chocolate", "medium roasted"],
      moreIcons: const [
        FaIcon(FontAwesomeIcons.coffee),
        FaIcon(FontAwesomeIcons.droplet),
        FaIcon(FontAwesomeIcons.fireFlameSimple),
      ],
      about:
          "Espresso is a coffee-based drink made primarily from espresso and milk, and it is a popular coffee drink that originated in Italy. The name comes from the Capuchin friars, referring to the colour of their habits, and in this context referring to the colour of the beverage when milk is added in small portion to dark, brewed coffee (today mostly espresso). The physical appearance of a modern cappuccino with espresso créma and steamed milk is a result of a long evolution of the drink. The Viennese bestowed the name 'Kapuziner' possibly in the 18th century on a version that included whipped cream and spices of unknown origin. The Italian cappuccino was unknown until the 1930s, and seems to be born out of Viennese-style cafés in Trieste and other cities in the former Austria in the first decades of the 20th century.",
    ),
    Coffee(
      type: "Espresso",
      image:
          "https://images.unsplash.com/photo-1572442388796-11668a67e53d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y2FwcHVjY2lub3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      description: "with hot milk",
      price: "\$5.99",
      rating: "4.5",
      moreDescription: const ["coffee", "milk", "medium roasted"],
      moreIcons: const [
        FaIcon(FontAwesomeIcons.coffee),
        FaIcon(FontAwesomeIcons.glassWater),
        FaIcon(FontAwesomeIcons.fireFlameSimple),
      ],
      about:
          "Espresso is a coffee-based drink made primarily from espresso and milk, and it is a popular coffee drink that originated in Italy. The name comes from the Capuchin friars, referring to the colour of their habits, and in this context referring to the colour of the beverage when milk is added in small portion to dark, brewed coffee (today mostly espresso). The physical appearance of a modern cappuccino with espresso créma and steamed milk is a result of a long evolution of the drink. The Viennese bestowed the name 'Kapuziner' possibly in the 18th century on a version that included whipped cream and spices of unknown origin. The Italian cappuccino was unknown until the 1930s, and seems to be born out of Viennese-style cafés in Trieste and other cities in the former Austria in the first decades of the 20th century.",
    ),
    Coffee(
        type: "Espresso",
        image:
            "https://images.unsplash.com/photo-1510591509098-f4fdc6d0ff04?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGV4cHJlc3NvJTIwY29mZmVlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        description: "with hot water",
        price: "\$4.99",
        rating: "4.5",
        moreDescription: const ["coffee", "water", "add on cream"],
        moreIcons: const [
          FaIcon(FontAwesomeIcons.coffee),
          FaIcon(FontAwesomeIcons.glassWaterDroplet),
          FaIcon(FontAwesomeIcons.iceCream),
        ],
        about:
            "Espresso is a coffee-based drink that originated in Italy, and is traditionally prepared with steamed milk foam (microfoam). It is normally prepared in a special type of coffee maker, the Espresso machine, which produces a thick, long-lasting foam. The drink is usually prepared with equal parts of espresso and hot milk, although the ratio of espresso to milk varies according to taste. The drink is typically garnished with cinnamon."),
    Coffee(
      type: "Espresso",
      image:
          "https://images.unsplash.com/photo-1572286258217-40142c1c6a70?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGV4cHJlc3NvJTIwY29mZmVlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      description: "with lemon",
      price: "\$4.32",
      rating: "4.7",
      moreDescription: const ["coffee", "chocolate", "medium grinded"],
      moreIcons: const [
        FaIcon(FontAwesomeIcons.coffee),
        FaIcon(FontAwesomeIcons.lemon),
        FaIcon(FontAwesomeIcons.leaf),
      ],
      about:
          "Espresso is a coffee-based drink that originated in Italy, and is traditionally prepared with steamed milk foam (microfoam). It is normally prepared in a special type of coffee maker, the Espresso machine, which produces a thick, long-lasting foam. The drink is usually prepared with equal parts of espresso and hot milk, although the ratio of espresso to milk varies according to taste. The drink is typically garnished with cinnamon.",
    ),
    Coffee(
      type: "Cappuccino",
      image:
          "https://images.unsplash.com/photo-1611564494260-6f21b80af7ea?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGNhcHB1Y2Npbm98ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      description: "with chocolate",
      price: "\$4.99",
      rating: "4.4",
      moreDescription: const ["coffee", "chocolate", "medium roasted"],
      moreIcons: const [
        FaIcon(FontAwesomeIcons.coffee),
        FaIcon(FontAwesomeIcons.candyCane),
        FaIcon(FontAwesomeIcons.fireFlameSimple),
      ],
      about:
          "Cappuccino is a coffee-based drink that originated in Italy, and is traditionally prepared with steamed milk foam (microfoam). It is normally prepared in a special type of coffee maker, the cappuccino machine, which produces a thick, long-lasting foam. The drink is usually prepared with equal parts of espresso and hot milk, although the ratio of espresso to milk varies according to taste. The drink is typically garnished with cinnamon.",
    ),
    Coffee(
      type: "Cappuccino",
      image:
          "https://images.unsplash.com/photo-1572442388796-11668a67e53d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y2FwcHVjY2lub3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      description: "with hot milk",
      price: "\$5.99",
      rating: "4.5",
      moreDescription: const ["coffee", "milk", "medium roasted"],
      moreIcons: const [
        FaIcon(FontAwesomeIcons.coffee),
        FaIcon(FontAwesomeIcons.glassWater),
        FaIcon(FontAwesomeIcons.fireFlameSimple),
      ],
      about:
          "Cappuccino is a coffee-based drink that originated in Italy, and is traditionally prepared with steamed milk foam (microfoam). It is normally prepared in a special type of coffee maker, the cappuccino machine, which produces a thick, long-lasting foam. The drink is usually prepared with equal parts of espresso and hot milk, although the ratio of espresso to milk varies according to taste. The drink is typically garnished with cinnamon.",
    ),
    Coffee(
        type: "Cappuccino",
        image:
            "https://images.unsplash.com/photo-1602320574582-741740d4fcd7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGNhcHB1Y2Npbm98ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
        description: "with hot water",
        price: "\$4.99",
        rating: "4.1",
        moreDescription: const ["coffee", "water", "add on cream"],
        moreIcons: const [
          FaIcon(FontAwesomeIcons.coffee),
          FaIcon(FontAwesomeIcons.glassWaterDroplet),
          FaIcon(FontAwesomeIcons.iceCream),
        ],
        about:
            "Cappuccino is a coffee-based drink that originated in Italy, and is traditionally prepared with steamed milk foam (microfoam). It is normally prepared in a special type of coffee maker, the cappuccino machine, which produces a thick, long-lasting foam. The drink is usually prepared with equal parts of espresso and hot milk, although the ratio of espresso to milk varies according to taste. The drink is typically garnished with cinnamon."),
    Coffee(
      type: "Cappuccino",
      image:
          "https://images.unsplash.com/photo-1572097662444-003d63fe5884?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGNhcHB1Y2Npbm98ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      description: "with lemon",
      price: "\$4.32",
      rating: "4.7",
      moreDescription: const ["coffee", "chocolate", "medium grinded"],
      moreIcons: const [
        FaIcon(FontAwesomeIcons.coffee),
        FaIcon(FontAwesomeIcons.candyCane),
        FaIcon(FontAwesomeIcons.leaf),
      ],
      about:
          "Cappuccino is a coffee-based drink that originated in Italy, and is traditionally prepared with steamed milk foam (microfoam). It is normally prepared in a special type of coffee maker, the cappuccino machine, which produces a thick, long-lasting foam. The drink is usually prepared with equal parts of espresso and hot milk, although the ratio of espresso to milk varies according to taste. The drink is typically garnished with cinnamon.",
    ),
    Coffee(
      type: "Latte",
      image:
          "https://images.unsplash.com/photo-1582152747136-af63c112fce5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bGF0dGUlMjBjb2ZmZWV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      description: "with chocolate",
      price: "\$4.99",
      rating: "4.5",
      moreDescription: const ["coffee", "chocolate", "medium roasted"],
      moreIcons: const [
        FaIcon(FontAwesomeIcons.coffee),
        FaIcon(FontAwesomeIcons.candyCane),
        FaIcon(FontAwesomeIcons.fireFlameSimple),
      ],
      about:
          "Latte is a coffee-based drink made primarily from espresso and milk, and it is a popular coffee drink that originated in Italy. The name comes from the Capuchin friars, referring to the colour of their habits, and in this context referring to the colour of the beverage when milk is added in small portion to dark, brewed coffee (today mostly espresso). The physical appearance of a modern cappuccino with espresso créma and steamed milk is a result of a long evolution of the drink. The Viennese bestowed the name 'Kapuziner' possibly in the 18th century on a version that included whipped cream and spices of unknown origin. The Italian cappuccino was unknown until the 1930s, and seems to be born out of Viennese-style cafés in Trieste and other cities in the former Austria in the first decades of the 20th century.",
    ),
    Coffee(
      type: "Latte",
      image:
          "https://images.unsplash.com/photo-1519532059956-a63a37af5deb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGxhdHRlJTIwY29mZmVlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      description: "with hot milk",
      price: "\$5.99",
      rating: "4.5",
      moreDescription: const ["coffee", "milk", "medium roasted"],
      moreIcons: const [
        FaIcon(FontAwesomeIcons.coffee),
        FaIcon(FontAwesomeIcons.glassWater),
        FaIcon(FontAwesomeIcons.fireFlameSimple),
      ],
      about:
          "Latte is a coffee-based drink made primarily from espresso and milk, and it is a popular coffee drink that originated in Italy. The name comes from the Capuchin friars, referring to the colour of their habits, and in this context referring to the colour of the beverage when milk is added in small portion to dark, brewed coffee (today mostly espresso). The physical appearance of a modern cappuccino with espresso créma and steamed milk is a result of a long evolution of the drink. The Viennese bestowed the name 'Kapuziner' possibly in the 18th century on a version that included whipped cream and spices of unknown origin. The Italian cappuccino was unknown until the 1930s, and seems to be born out of Viennese-style cafés in Trieste and other cities in the former Austria in the first decades of the 20th century.",
    ),
    Coffee(
      type: "Latte",
      image:
          "https://images.unsplash.com/photo-1602320574582-741740d4fcd7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGNhcHB1Y2Npbm98ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      description: "with hot water",
      price: "\$4.99",
      rating: "4.5",
      moreDescription: const ["coffee", "water", "add on cream"],
      moreIcons: const [
        FaIcon(FontAwesomeIcons.coffee),
        FaIcon(FontAwesomeIcons.glassWaterDroplet),
        FaIcon(FontAwesomeIcons.iceCream),
      ],
      about:
          "Latte is a coffee-based drink made primarily from espresso and milk, and it is a popular coffee drink that originated in Italy. The name comes from the Capuchin friars, referring to the colour of their habits, and in this context referring to the colour of the beverage when milk is added in small portion to dark, brewed coffee (today mostly espresso). The physical appearance of a modern cappuccino with espresso créma and steamed milk is a result of a long evolution of the drink. The Viennese bestowed the name 'Kapuziner' possibly in the 18th century on a version that included whipped cream and spices of unknown origin. The Italian cappuccino was unknown until the 1930s, and seems to be born out of Viennese-style cafés in Trieste and other cities in the former Austria in the first decades of the 20th century.",
    ),
    Coffee(
      type: "Latte",
      image:
          "https://plus.unsplash.com/premium_photo-1671559020936-680ad4d3d2fc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8bGF0dGUlMjBjb2ZmZWV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      description: "with lemon",
      price: "\$4.32",
      rating: "4.7",
      moreDescription: const ["coffee", "lemon", "less sugar"],
      moreIcons: const [
        FaIcon(FontAwesomeIcons.coffee),
        FaIcon(FontAwesomeIcons.lemon),
        FaIcon(FontAwesomeIcons.leaf),
      ],
      about:
          "Latte is a coffee-based drink made primarily from espresso and milk, and it is a popular coffee drink that originated in Italy. The name comes from the Capuchin friars, referring to the colour of their habits, and in this context referring to the colour of the beverage when milk is added in small portion to dark, brewed coffee (today mostly espresso). The physical appearance of a modern cappuccino with espresso créma and steamed milk is a result of a long evolution of the drink. The Viennese bestowed the name 'Kapuziner' possibly in the 18th century on a version that included whipped cream and spices of unknown origin. The Italian cappuccino was unknown until the 1930s, and seems to be born out of Viennese-style cafés in Trieste and other cities in the former Austria in the first decades of the 20th century.",
    ),
  ];
  @override
  List<Object?> get props => [image, description, price, rating];
}
