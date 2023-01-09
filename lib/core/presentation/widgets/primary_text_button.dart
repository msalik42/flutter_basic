import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PrimaryTextButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  // const PrimaryTextButton({this.onPressed, required, this.text, Key? key}) : super(key: key)
  const PrimaryTextButton({this.onPressed, required this.text, Key? key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.0,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: onPressed == null ? const Color(0XFF9A9A9A) : const Color(0XFF2689FB)
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white
          ),
        ),
      ),
    );
  }
}
