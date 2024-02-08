import 'package:get/get.dart';
import 'package:introduction_module/app/routes/routes.dart';
import 'package:introduction_module/features/home/presentation/home_binding.dart';
import 'package:introduction_module/features/home/presentation/home_screen.dart';
import 'package:introduction_module/features/names/presentation/name_binding.dart';
import 'package:introduction_module/features/names/presentation/name_screen.dart';

abstract class Pages {
  static final pagesList = [
    GetPage(
      name: Routes.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.names,
      page: () => const NameScreen(),
      binding: NamesBinding(),
    ),
  ];
}
