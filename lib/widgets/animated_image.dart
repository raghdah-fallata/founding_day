import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../constants/styles.dart' as styles;
class AnimatedImage extends StatefulWidget {
  const AnimatedImage({Key? key, required this.image,}) : super(key: key);
  final String image;
  @override
  State<AnimatedImage> createState() => _AnimatedImageState();
}

class _AnimatedImageState extends State<AnimatedImage> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(vsync: this, duration: const Duration(seconds: 50))..repeat();

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * math.pi,
          child: child,
        );
      },
      child: Image.asset(widget.image, height: 550, color: styles.eggShell.withOpacity(0.2),),
    );
  }
}
