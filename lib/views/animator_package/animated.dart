import 'package:animated_widgets_flutter/widgets/size_animated.dart';
import 'package:animator/animator.dart';
import 'package:flutter/material.dart';

class AnimationWidget extends StatelessWidget {
  const AnimationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          width: 200.0,
          height: 100.0,
          color: Colors.blue,
        ),
      ),
    );
  }
}

/// classe qu'on va utilise pour lancer notre animation
/// onva l'utlise pour notre splash screen

class AnimatedLogo extends StatelessWidget {
  const AnimatedLogo({super.key, required this.container});
  final Widget container;

  @override
  Widget build(BuildContext context) {
    return Animator<double>(
      tween: Tween<double>(begin: 200, end: 220),
      cycles: 0,
      builder: (context, animatorState, child) => Center(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          height: animatorState.value,
          width: animatorState.value,
          child: SizeAnimatedWidget(
            enabled: true,
            duration: const Duration(milliseconds: 2000),
            values: const [
              Size(200, 200),
              Size(100, 150),
              Size(300, 150),
              Size(200, 200)
            ],
            curve: Curves.linear,

            //your widget
            child: container,
          ),
        ),
      ),
    );
  }
}
