import 'package:flutter/material.dart';
import 'animated_image.dart';

class AnimatedContent extends StatelessWidget {
  const AnimatedContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Align(
            alignment: Alignment.bottomLeft,
            child: AnimatedImage(image: 'images/pattern2.webp',)),
        Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              'images/image.webp',
              height: 400,
            )),
      ],
    );
  }
}
