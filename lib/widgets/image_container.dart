import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final double height;
  final double width;
  final String imageUrl;

  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? borderRadius;
  final Widget? child;
  final VoidCallback? onTap;
  const ImageContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.imageUrl,
    this.padding,
    this.margin,
    this.borderRadius,
    this.child,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height,
          width: width,
          padding: padding,
          margin: margin,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius ?? 0),
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
          child: child,
        ),
        Positioned(
          top: 10,
          right: 10,
          child: Container(
            height: 20,
            width: 50,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(161, 72, 39, 0.7),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(
                  Icons.star,
                  size: 12,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "4.5",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
