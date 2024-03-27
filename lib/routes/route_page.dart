import 'package:get/get.dart';
import 'package:splash_screen/bindings/bindings.dart';
import 'package:splash_screen/routes/name.dart';
import 'package:splash_screen/views/home_page.dart';
import 'package:splash_screen/views/splah_screen.dart';

class PageList {
  // Future.delayed(duration)
  static List<GetPage> pageList = [
    GetPage(
        name: Name.index,
        page: () => const SplashScreen(),
        binding: SplashBinding()),
    GetPage(
      name: Name.homePage,
      page: () => const HomePage(),
    ),
  ];
}
