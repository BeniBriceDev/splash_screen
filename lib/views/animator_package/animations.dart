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

class AnimatedLogo2 extends StatelessWidget {
  const AnimatedLogo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Animator<double>(
      tween: Tween<double>(begin: 0, end: 300),
      repeats: 0,
      duration: Duration(seconds: 2),
      builder: (context, anim1, child) => Animator<double>(
        tween: Tween<double>(begin: -1, end: 1),
        cycles: 0,
        builder: (context, anim2, child) => Center(
          child: Transform.rotate(
            angle: anim2.value,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: anim1.value,
              width: anim1.value,
              child: SizeAnimatedWidget(
                enabled: true,
                duration: const Duration(milliseconds: 1500),
                values: const [
                  Size(100, 100),
                  Size(100, 150),
                  Size(200, 150),
                  Size(200, 200)
                ],
                curve: Curves.linear,

                //your widget
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.blue)),
                  child: Container(
                    color: Colors.white,
                    height: 150,
                    width: 150,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
