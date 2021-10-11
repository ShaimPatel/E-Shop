import 'package:e_shop/Screens/HomePage/home_page.dart';
import 'package:e_shop/Screens/LoginScreen/login_screen.dart';
import 'package:e_shop/Screens/SignupScreen/signup_screen.dart';
import 'package:e_shop/my_bottombar/my_bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EShop());
}

class EShop extends StatelessWidget {
  const EShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        initialRoute: '/mybottombarpage',
        routes: {
          '/loginscreen': (context) => const LoginScreen(),
          '/signupscreen': (context) => const SignUpScreen(),
          '/homepage': (context) => const HomePage(),
          '/mybottombarpage': (context) => const MyBottomBarPage(),
        });
  }
}
