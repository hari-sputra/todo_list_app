import 'package:flutter/material.dart';
import 'package:todo_list_app/view/create_account_page.dart';
import 'package:todo_list_app/view/intro_page/started_page.dart';
import 'package:todo_list_app/view/login_page.dart';

import 'view/intro_page/onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const OnBoardingPage(),
        '/start': (context) => const StartedPage(),
        '/login': (context) => const LoginPage(),
        '/create': (context) => const CreateAccountPage(),
      },
    );
  }
}
