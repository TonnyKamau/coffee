import 'package:equatable/equatable.dart';

class Promotion extends Equatable {
  final String imageUrl;
  final String categories;
  final String description;

  Promotion({
    required this.imageUrl,
    required this.description,
    required this.categories,
  });
  static List<Promotion> promotions = [
    Promotion(
      imageUrl:
          "https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y29mZmVlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      categories: "Discount sales",
      description: "Get three flavoured coffee for the price of two",
    ),
    Promotion(
      imageUrl:
          "https://images.unsplash.com/photo-1512568400610-62da28bc8a13?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGNvZmZlZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      categories: "Take away",
      description: "No time to wait? Order ahead and pick up in store",
    ),
    Promotion(
      imageUrl:
          "https://images.unsplash.com/photo-1509203847636-3013b8ae5cb4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fG11ZmZpbiUyMGFuZCUyMGNvZmZlZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      categories: "Plus muffins",
      description: "Get a free muffin with every coffee you buy",
    ),
    Promotion(
      imageUrl:
          "https://images.unsplash.com/photo-1498804103079-a6351b050096?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGNvZmZlZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      categories: "New flavours",
      description: "Enjoy our new flavours of the month",
    ),
  ];

  @override
  List<Object?> get props => [
        imageUrl,
        categories,
        description,
      ];
}
