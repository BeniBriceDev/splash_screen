import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:splash_screen/colors/prefered_color.dart';
import 'package:splash_screen/controllers/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.white,
        body: GetBuilder<SplashController>(
          builder: (controller) {
            controller.onInit();
            return Stack(
              children: [
                // Center(
                //   child: LoadingAnimationWidget.beat(
                //     size: 200,
                //     color: Color.fromARGB(255, 31, 30, 30),
                //   ),
                // ),

                Center(
                  child: container[0]
                      .animate(
                        onPlay: (controller) => controller.repeat(),
                      )
                      .fadeIn() // uses `Animate.defaultDuration`
                      .scale() // inherits duration from fadeIn
                      .moveX(
                          begin: 15,
                          end: -17,
                          delay: 300.ms,
                          duration:
                              600.ms) // runs after the above w/new duration
                      .blurX(begin: 0, end: 0),
                ),

                Center(
                  child: container[0]
                      .animate(
                        onPlay: (controller) => controller.repeat(),
                      )
                      .fadeIn() // uses `Animate.defaultDuration`
                      .scale() // inherits duration from fadeIn
                      .moveX(
                          begin: -15,
                          end: 17,
                          delay: 300.ms,
                          duration:
                              800.ms) // runs after the above w/new duration
                      .blurX(begin: 0, end: 0),
                ),
                Center(
                  child: container[0]
                      .animate(
                        onPlay: (controller) => controller.repeat(),
                      )
                      .fadeIn() // uses `Animate.defaultDuration`
                      .scale() // inherits duration from fadeIn
                      .moveY(
                          begin: -10,
                          delay: 600.ms,
                          duration:
                              600.ms) // runs after the above w/new duration
                      .blurX(begin: 0, end: 0),
                ),

                Center(
                  child: container[0]
                      .animate(
                        onPlay: (controller) => controller.repeat(),
                      )
                      .fadeIn() // uses `Animate.defaultDuration`
                      .scale() // inherits duration from fadeIn
                      .moveY(
                          begin: 10,
                          delay: 600.ms,
                          duration:
                              600.ms) // runs after the above w/new duration
                      .blurX(begin: 0, end: 0),
                ),

                Center(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(80),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 1,
                            color: Color.fromARGB(255, 128, 123, 123),
                          ),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset("assets/ihela.png"),
                    ),
                  ),
                ),
                const Positioned(
                  left: 20,
                  bottom: 90,
                  right: 20,
                  child: Column(
                    children: [
                      Align(
                        child:
                            Text("A product of Onamob & iHelá  Credit Union"),
                      ),
                      Align(
                        child: Text(
                          "for financial services in Burundi",
                          style: TextStyle(
                            color: Color.fromARGB(179, 27, 3, 24),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ));
  }
}

List<Widget> container = [
  Container(
    width: 160,
    height: 160,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      boxShadow: [
        BoxShadow(
          blurRadius: 2,
          color: PreferedColor.firstBackground,
        ),
      ],
    ),
  ),
];
