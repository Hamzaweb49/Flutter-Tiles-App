import 'package:get/get.dart';
import 'package:tiles_app/ui/add_brand_screen.dart';
import 'package:tiles_app/ui/add_product_screen.dart';
import 'package:tiles_app/ui/admin_dashboard_screen.dart';
import 'package:tiles_app/ui/admin_orders_screen.dart';
import 'package:tiles_app/ui/categories_list_screen.dart';
import 'package:tiles_app/ui/create_order_screen.dart';
import 'package:tiles_app/ui/home_screen.dart';
import 'package:tiles_app/ui/location_screen.dart';
import 'package:tiles_app/ui/login_screen.dart';
import 'package:tiles_app/ui/product_details_screen.dart';
import 'package:tiles_app/ui/products_screen.dart';
import 'package:tiles_app/ui/register_screen.dart';
import 'package:tiles_app/ui/splash_screen.dart';
import 'package:tiles_app/ui/user_dashboard_screen.dart';
import 'package:tiles_app/ui/user_orders_screen.dart';
import 'package:tiles_app/ui/user_profile_screen.dart';

class Routes {
  static String splashScreen = "/";
  static String homeScreen = "/homeScreen";
  static String locationScreen = "/locationScreen";
  static String categoriesListScreen = "/categoriesListScreen";
  static String productScreen = "/productScreen";
  static String productDetailsScreen = "/productDetailsScreen";
  static String addProductScreen = "/addProductScreen";
  static String loginScreen = "/loginScreen";
  static String registerScreen = "/registerScreen";
  static String adminDashboardScreen = "/adminDashboardScreen";
  static String addBrandScreen = "/addBrandScreen";
  static String adminOrdersScreen = "/adminOrdersScreen";
  static String createOrderScreen = "/createOrderScreen";
  static String userDashboardScreen = "/userDashboardScreen";
  static String userProfileScreen = "/userProfileScreen";
  static String userOrdersScreen = "/userOrdersScreen";

  static List<GetPage> routes = [
    GetPage(
        name: splashScreen,
        page: () => const SplashScreen(),
        transition: Transition.fadeIn),
    GetPage(
        name: homeScreen,
        page: () => const HomeScreen(),
        transition: Transition.fadeIn),
    GetPage(
        name: locationScreen,
        page: () => const LocationScreen(),
        transition: Transition.downToUp),
    GetPage(
        name: categoriesListScreen,
        page: () => const CategoriesListScreen(),
        transition: Transition.fadeIn),
    GetPage(
        name: productScreen,
        page: () => const ProductsScreen(),
        transition: Transition.upToDown),
    GetPage(
        name: productDetailsScreen,
        page: () => const ProductDetailsScreen(),
        transition: Transition.fadeIn),
    GetPage(
        name: addProductScreen,
        page: () => const AddProductScreen(),
        transition: Transition.fadeIn),
    GetPage(
        name: loginScreen,
        page: () => const LoginScreen(),
        transition: Transition.fadeIn),
    GetPage(
        name: registerScreen,
        page: () => const RegisterScreen(),
        transition: Transition.fadeIn),
    GetPage(
        name: adminDashboardScreen,
        page: () => const AdminDashboardScreen(),
        transition: Transition.fadeIn),
    GetPage(
        name: addBrandScreen,
        page: () => const AddBrandScreen(),
        transition: Transition.fadeIn),
    GetPage(
        name: createOrderScreen,
        page: () => const CreateOrderScreen(),
        transition: Transition.fadeIn),
    GetPage(
        name: userDashboardScreen,
        page: () => const UserDashboardScreen(),
        transition: Transition.fadeIn),
    GetPage(
        name: userProfileScreen,
        page: () => const UserProfileScreen(),
        transition: Transition.fadeIn),
    GetPage(
        name: userOrdersScreen,
        page: () => const UserOrdersScreen(),
        transition: Transition.fadeIn),
    GetPage(
        name: adminOrdersScreen,
        page: () => const AdminOrdersScreen(),
        transition: Transition.fadeIn),
  ];
}
