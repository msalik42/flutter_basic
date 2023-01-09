import 'package:flutter/material.dart';

class CommonTextFieldWidget extends StatelessWidget {
  const CommonTextFieldWidget(
      {Key? key,
      this.controller,
      required this.title,
      this.keyboardType,
      required this.IconPath,
      this.onChange,
      required this.hintText,
      this.isHidePassword = false,
      this.validator,
      this.maxLength,
      required this.hidePassword})
      : super(key: key);

  final TextEditingController? controller;
  final String title;
  final IconData IconPath;
  final String hintText;
  final bool isHidePassword;
  final TextInputType? keyboardType;
  final int? maxLength;
  final Function() hidePassword;
  final ValueChanged? onChange;
  final FormFieldValidator? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(width: 0.5, color: const Color(0xffF5F5F5)),
              borderRadius: const BorderRadius.all(Radius.circular(4))),
          child: Row(
            children: [
              SizedBox(height: 16.0),
              Expanded(
                child: TextFormField(
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(color: Colors.black),
                  maxLength: maxLength,
                  onChanged: onChange,
                  obscureText: isHidePassword,
                  keyboardType: keyboardType,
                  controller: controller,
                  validator: validator,
                  decoration: InputDecoration(
                      filled: true,
                      hintText: hintText,
                      fillColor: Colors.white,
                      counterText: "",
                      hintStyle: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(
                              color: Colors.black.withOpacity(0.60),
                              fontSize: 13),
                      border: InputBorder.none),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    hidePassword();
                  },
                  child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 16),
                      color: Colors.white,
                      child: Icon(
                        IconPath,
                        size: 16,
                      ))),
            ],
          ),
        )
      ],
    );
  }
}
