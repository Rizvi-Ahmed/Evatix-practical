import 'package:flutter/material.dart';
import 'package:registration/screen/Welcome_screen.dart';

class ResetSuccess extends StatelessWidget {
  static const routeName = '/Successful';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Successful!",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "You have successfully chaged the password.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                    softWrap: true,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 15,
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(WelcomeScreen.routeName);
                },
                child: Text(
                  "Log in",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
