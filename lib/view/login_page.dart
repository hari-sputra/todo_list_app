import 'package:flutter/material.dart';
import 'package:todo_list_app/helpers/const.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // header
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(
          top: 20,
          left: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                "src/icons/back_button.png",
                width: 26,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Login",
              style: primaryTextStyle.copyWith(
                fontSize: 28,
                fontWeight: bold,
                letterSpacing: 2,
              ),
            ),
          ],
        ),
      );
    }

    // username and password
    Widget usernamePassword() {
      return Container(
        margin: const EdgeInsets.only(
          top: 25,
          left: 24,
          right: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Username",
              style: primaryTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              style: primaryTextStyle,
              cursorColor: primaryColor,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10),
                filled: true,
                fillColor: blackColor,
                hintText: "Enter your Username",
                hintStyle: primaryTextStyle.copyWith(
                  color: secondaryColor.withOpacity(.3),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: primaryColor,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: greyColor.withOpacity(.5),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Password",
              style: primaryTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              style: primaryTextStyle,
              cursorColor: primaryColor,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10),
                filled: true,
                fillColor: blackColor,
                hintText: "Enter your Password",
                hintStyle: primaryTextStyle.copyWith(
                  color: secondaryColor.withOpacity(.3),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: primaryColor,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: greyColor.withOpacity(.5),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              height: 45,
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
          ],
        ),
      );
    }

    //  another login button
    Widget buttonLoginWithAccount() {
      return Container(
        margin: const EdgeInsets.only(
          top: 25,
          left: 24,
          right: 24,
        ),
        child: Column(
          children: [
            Image.asset(
              "src/icons/line.png",
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: primaryColor,
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "src/icons/google.png",
                        width: 24,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Login with Google",
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: primaryColor,
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "src/icons/apple.png",
                        width: 24,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Login with Apple",
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        children: [
          header(),
          usernamePassword(),
          buttonLoginWithAccount(),
        ],
      ),
    );
  }
}
