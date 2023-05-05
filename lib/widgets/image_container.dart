import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final double height;
  final double width;
  final String imageUrl;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? borderRadius;
  final Widget? child;
  const ImageContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.imageUrl,
    this.padding,
    this.margin,
    this.borderRadius,
    this.child,
  }) : super(key: key);
 

  @override
  Widget build(BuildContext context) {
    return Container(
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
      
    );
  }
}