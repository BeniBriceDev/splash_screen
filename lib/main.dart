import 'package:animated_widgets_flutter/widgets/size_animated.dart';
import 'package:animator/animator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splash_screen/routes/route_page.dart';

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

