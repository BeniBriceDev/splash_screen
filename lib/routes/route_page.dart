import 'package:get/get.dart';
import 'package:splash_screen/bindings/bindings.dart';
import 'package:splash_screen/views/home_page.dart';
import 'package:splash_screen/views/splah_screen.dart';

class PageList {
  // Future.delayed(duration)
  static List<GetPage> pageList = [
    GetPage(
        name: '/', page: () => const SplashScreen(), binding: SplashBinding()),
    GetPage(name: '/home', page: () => const HomePage()),
  ];
}
