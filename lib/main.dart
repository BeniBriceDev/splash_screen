import 'package:animated_widgets_flutter/widgets/size_animated.dart';
import 'package:animator/animator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:splash_screen/routes/route_page.dart';
import 'package:splash_screen/views/animation_screen.dart';
import 'package:splash_screen/views/animator_package/animated.dart';
import 'package:splash_screen/views/splah_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      initialRoute: '/',
      getPages: PageList.pageList,
      // home: AnimatedLogo(),
    );
  }
}

class AnimatedLogo2 extends StatelessWidget {
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
              margin: EdgeInsets.symmetric(vertical: 10),
              height: anim1.value,
              width: anim1.value,
              child: SizeAnimatedWidget(
                enabled: true,
                duration: Duration(milliseconds: 1500),
                values: [
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
