import 'package:get/get.dart'; // Add this import for GetPage
import 'package:latihan1/presentation/feature/home/pages/home_page.dart';
import 'package:latihan1/presentation/feature/login/pages/login_page.dart';
import 'package:latihan1/presentation/feature/notFound/not_found.dart';
import 'package:latihan1/presentation/feature/splash/splash.dart';
import 'package:latihan1/routes/route_name.dart';

class AppRoutes {
  static List<GetPage> get routes {
    return [
      GetPage(name: RouteName.root, page: () => const SplashPage()),
      GetPage(name: RouteName.login, page: () => const LoginPage()),
      GetPage(name: RouteName.home, page: () => const HomePage())
    ];
  }

  static GetPage get unknownPage =>
      GetPage(name: RouteName.notFound, page: () => const NotFoundPage());
}