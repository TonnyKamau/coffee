import 'package:equatable/equatable.dart';

class Cappuccino extends Equatable {
  final String image;
  final String description;
  final String price;
  final String rating;
  final List moreDescription;
  final String about;
  Cappuccino({
    required this.image,
    required this.description,
    required this.price,
    required this.rating,
    required this.moreDescription,
    required this.about,
  });
  static List<Cappuccino> cappuccinos = [
    Cappuccino(
      image:
          "https://images.unsplash.com/photo-1611564494260-6f21b80af7ea?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGNhcHB1Y2Npbm98ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      description: "with chocolate",
      price: "\$4.99",
      rating: "4.4",
      moreDescription: const ["coffee", "chocolate", "medium roasted"],
      about:
          "Cappuccino is a coffee-based drink that originated in Italy, and is traditionally prepared with steamed milk foam (microfoam). It is normally prepared in a special type of coffee maker, the cappuccino machine, which produces a thick, long-lasting foam. The drink is usually prepared with equal parts of espresso and hot milk, although the ratio of espresso to milk varies according to taste. The drink is typically garnished with cinnamon.",
    ),
    Cappuccino(
      image:
          "https://images.unsplash.com/photo-1572442388796-11668a67e53d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y2FwcHVjY2lub3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      description: "with hot milk",
      price: "\$5.99",
      rating: "4.5",
      moreDescription: const ["coffee", "milk", "medium roasted"],
      about:
          "Cappuccino is a coffee-based drink that originated in Italy, and is traditionally prepared with steamed milk foam (microfoam). It is normally prepared in a special type of coffee maker, the cappuccino machine, which produces a thick, long-lasting foam. The drink is usually prepared with equal parts of espresso and hot milk, although the ratio of espresso to milk varies according to taste. The drink is typically garnished with cinnamon.",
    ),
    Cappuccino(
        image:
            "https://images.unsplash.com/photo-1602320574582-741740d4fcd7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGNhcHB1Y2Npbm98ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
        description: "with hot water",
        price: "\$4.99",
        rating: "4.1",
        moreDescription: const ["coffee", "water", "add on cream"],
        about:
            "Cappuccino is a coffee-based drink that originated in Italy, and is traditionally prepared with steamed milk foam (microfoam). It is normally prepared in a special type of coffee maker, the cappuccino machine, which produces a thick, long-lasting foam. The drink is usually prepared with equal parts of espresso and hot milk, although the ratio of espresso to milk varies according to taste. The drink is typically garnished with cinnamon."),
    Cappuccino(
      image:
          "https://images.unsplash.com/photo-1572097662444-003d63fe5884?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGNhcHB1Y2Npbm98ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      description: "with lemon",
      price: "\$4.32",
      rating: "4.7",
      moreDescription: const ["coffee", "chocolate", "medium grinded"],
      about:
          "Cappuccino is a coffee-based drink that originated in Italy, and is traditionally prepared with steamed milk foam (microfoam). It is normally prepared in a special type of coffee maker, the cappuccino machine, which produces a thick, long-lasting foam. The drink is usually prepared with equal parts of espresso and hot milk, although the ratio of espresso to milk varies according to taste. The drink is typically garnished with cinnamon.",
    ),
  ];
  @override
  List<Object?> get props => [image, description, price, rating];
}
