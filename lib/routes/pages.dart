import 'package:eggssistant/pages/home/binding.dart';
import 'package:eggssistant/pages/home/ui.dart';
import 'package:eggssistant/routes/routes.dart';
import 'package:get/get.dart';

class MyPages {
  static final routes = [
    // GetPage(
    //   name: MyRoutes.login,
    //   page: () => const LoginPage(),
    //   binding: LoginBinding(),
    // ),
    GetPage(
      name: MyRoutes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    // GetPage(
    //   name: MyRoutes.forgotPassword,
    //   page: () => const ForgotPasswordPage(),
    //   binding: ForgotPasswordBinding(),
    // ),
    // GetPage(
    //   name: MyRoutes.changePassword,
    //   page: () => const ChangePasswordPage(),
    //   binding: ChangePasswordBinding(),
    // ),
  ];
}
