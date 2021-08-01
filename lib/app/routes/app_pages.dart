import 'package:get/get.dart';

import 'package:opaku/app/modules/cart/bindings/cart_binding.dart';
import 'package:opaku/app/modules/cart/views/cart_view.dart';
import 'package:opaku/app/modules/detail/bindings/detail_binding.dart';
import 'package:opaku/app/modules/detail/views/detail_view.dart';
import 'package:opaku/app/modules/home/bindings/home_binding.dart';
import 'package:opaku/app/modules/home/views/home_view.dart';
import 'package:opaku/app/modules/login/bindings/login_binding.dart';
import 'package:opaku/app/modules/login/views/login_view.dart';
import 'package:opaku/app/modules/signup/bindings/signup_binding.dart';
import 'package:opaku/app/modules/signup/views/signup_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => DetailView(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
  ];
}
