import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_basic/core/presentation/bordered_textfield.dart';
import 'package:flutter_basic/core/presentation/widgets/primary_text_button.dart';
import 'package:flutter_basic/core/presentation/widgets/common_textfield.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  String email = "";
  String password = "";
  void handleLogin(){
    print("Called handleLogin Function");
    print("Email: $email");
    print("Password: $password");
  }
  bool hideCurrentPassword = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: TextStyle(color: Colors.white, fontSize: 30.0),
            ),
            SizedBox(height: 40.0),
            Text(
              "Email",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Colors.white70,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            BorderedTextFormField(
              hintText: "Enter email here",
              maxLength: 200,
              keyboardType: TextInputType.emailAddress,
              onChange: (value){
                setState((){
                  email = value;
                });
              },
            ),
            SizedBox(height: 10.0),
            Text(
              "Password",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Colors.white70,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            CommonTextFieldWidget(
              hintText: "Enter Password",
              IconPath: hideCurrentPassword
                ? Icons.visibility_off
                : Icons.visibility,
              keyboardType: TextInputType.visiblePassword,
              hidePassword: () {
                setState(() {
                  hideCurrentPassword = !hideCurrentPassword;
                });
              },
              isHidePassword: hideCurrentPassword,
              onChange: (value) {
                setState(() {
                  password = value;
                });
              },
              title: "Password",
            ),
            SizedBox(height: 20.0),
            PrimaryTextButton(
              text: "Sign In",
              onPressed: (email.isEmpty || password.isEmpty)
              ? null
              : handleLogin
            ),
          ],
        )),
      ),
    );
  }
}
