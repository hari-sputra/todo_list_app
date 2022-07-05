import 'package:flutter/material.dart';
import 'package:todo_list_app/helpers/const.dart';

class StartedPage extends StatelessWidget {
  const StartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // head
    Widget headContent() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 44),
        child: Column(
          children: [
            const SizedBox(
              height: 95,
            ),
            Text(
              "Welcome to ToDo App",
              style: primaryTextStyle.copyWith(
                fontSize: 28,
                fontWeight: bold,
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            Text(
              "Please login to your account or create new account to continue",
              style: secondaryTextStyle.copyWith(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    // button
    Widget button() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Login",
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: primaryColor,
                ),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Create Account",
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  side: BorderSide(
                    color: primaryColor,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: headContent(),
              ),
              button(),
            ],
          ),
        ),
      ),
    );
  }
}
