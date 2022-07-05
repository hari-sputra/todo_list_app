import 'package:flutter/material.dart';
import 'package:todo_list_app/helpers/const.dart';

class StartedPage extends StatelessWidget {
  const StartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 95,
            ),
            Text(
              "Welcome to UpTodo",
              style: primaryTextStyle.copyWith(
                fontSize: 32,
                fontWeight: bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
