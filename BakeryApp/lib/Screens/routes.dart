import 'package:flutter/widgets.dart';
import 'package:flutter_auth/Screens/cart/cart_screen.dart';
import 'profile/profile_screen.dart';

final Map<String, WidgetBuilder> routes = {
  ProfileScreen.routeName:(context) => ProfileScreen(),
  CartScreen.routeName:(context) => CartScreen(),
};