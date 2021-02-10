import 'package:flutter/material.dart';
import 'package:registration/screen/Forgot_Pass_screen.dart';
import 'package:registration/screen/Reset_pass_screen.dart';
import 'package:registration/screen/Reset_success_screen.dart';
import './screen/Welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Registration',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      routes: {
        WelcomeScreen.routeName: (context) => WelcomeScreen(),
        ResetPassScreen.routeName: (context) => ResetPassScreen(),
        ForgotPassScreen.routeName: (context) => ForgotPassScreen(),
        ResetSuccess.routeName: (context) => ResetSuccess(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 50,
              child: Container(
                width: 100,
              ),
            ),
            Expanded(
              flex: 40,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        "Task and Assign",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Task and Assign them to collegues",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 20,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    FlatButton(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: Text(
                        "Log in",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(WelcomeScreen.routeName);
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
