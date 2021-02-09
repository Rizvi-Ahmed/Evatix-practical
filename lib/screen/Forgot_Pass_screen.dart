import 'package:flutter/material.dart';
import 'package:registration/screen/Reset_pass_screen.dart';

class ForgotPassScreen extends StatefulWidget {
  static const routeName = '/ForgotPass';
  @override
  _ForgotPassScreenState createState() => _ForgotPassScreenState();
}

class _ForgotPassScreenState extends State<ForgotPassScreen> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 15,
              child: Container(
                width: 100,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              flex: 40,
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Please enter your mail below to receive your password reset instructions",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                        softWrap: true,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: InputBorder.none,
                          labelText: "Username",
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                          hintText: "Enter your email",
                          hintStyle:
                              TextStyle(height: 3, color: Colors.grey[400])),
                    ),
                    Container(
                      child: FlatButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(ResetPassScreen.routeName);
                        },
                        child: Text(
                          "Send Request",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 20,
              child: Container(
                height: 100,
                alignment: Alignment.bottomCenter,
                child: FlatButton(
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
