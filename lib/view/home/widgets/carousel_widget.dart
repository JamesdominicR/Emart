import 'package:flutter/material.dart';

class CarouselWidget extends StatelessWidget {
  final ImageProvider<Object> image;
  const CarouselWidget({
    Key? key,required this.image
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          image: image,
          fit: BoxFit.cover,
        )
      ),
    );
  }
}
