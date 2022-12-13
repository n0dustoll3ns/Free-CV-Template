import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc_template/ui/screens/about_shop/about_shop.dart';
import 'package:flutter_bloc_template/ui/screens/loyalty_program/loyalty_program_screen.dart';
import 'package:flutter_bloc_template/ui/screens/payment_redirect_page/payment_redirect_page.dart';
import 'package:flutter_bloc_template/ui/screens/user_profile/adresses_list/adresses.dart';

import '../../ui/screens/checkout/checkout_screen.dart';
import '../../ui/screens/main_screen.dart';
import '../../ui/screens/login_screen/login_screen.dart';
import '../../ui/screens/user_profile/recievers_list/recievers.dart';

class Routes {
  static get home => CupertinoPageRoute(builder: (context) => const MainScreen());
  static get signIn => CupertinoPageRoute(builder: (context) => const LoginPage());
  static get loyaltyProgramScreen => CupertinoPageRoute(builder: (context) => const LoyaltyProgramScreen());
  static get aboutShopScreen => CupertinoPageRoute(builder: (context) => const AboutShopScreen());
  static get recieversList => CupertinoPageRoute(builder: ((context) => const RecieversListScreen()));
  static get adressesList => CupertinoPageRoute(builder: ((context) => const AdressesListScreen()));
  static get checkOut => CupertinoPageRoute(builder: ((context) => CheckoutScreen(key: UniqueKey())));
  static get paymentRedirect => CupertinoPageRoute(builder: ((context) => const PaymentRedirectPage()));
}
