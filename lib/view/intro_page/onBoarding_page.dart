// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../helpers/const.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          globalBackgroundColor: bgColor,
          next: Text(
            "Next",
            style: primaryTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
          done: Text(
            "Get Started",
            style: primaryTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
          onDone: () {
            Navigator.pushNamedAndRemoveUntil(
                context, "/start", (route) => false);
          },
          pages: [
            PageViewModel(
              titleWidget: Text(
                "Manage your tasks",
                style: primaryTextStyle.copyWith(
                  fontSize: 32,
                  fontWeight: bold,
                ),
              ),
              bodyWidget: Text(
                "You can easily manage all of your tasks in App for free",
                style: secondaryTextStyle.copyWith(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              image: Center(
                child: Image.asset(
                  "src/images/onboard1.png",
                  // height: 175.0,
                ),
              ),
            ),
            PageViewModel(
              titleWidget: Text(
                "Create daily routine",
                style: primaryTextStyle.copyWith(
                  fontSize: 32,
                  fontWeight: bold,
                ),
              ),
              bodyWidget: Text(
                "In Uptodo  you can create your personalized routine to stay productive",
                style: secondaryTextStyle.copyWith(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              image: Center(
                child: Image.asset(
                  "src/images/onboard2.png",
                  // height: 175.0,
                ),
              ),
            ),
            PageViewModel(
              titleWidget: Text(
                "Organize your tasks",
                style: primaryTextStyle.copyWith(
                  fontSize: 32,
                  fontWeight: bold,
                ),
              ),
              bodyWidget: Text(
                "You can organize your daily tasks by adding your tasks into separate categories",
                style: secondaryTextStyle.copyWith(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              image: Center(
                child: Image.asset(
                  "src/images/onboard3.png",
                  // height: 175.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
