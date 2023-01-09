import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BorderedTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final FormFieldValidator? validator;
  final ValueChanged? onChange;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final Widget? prefix;
  final bool obscureText;
  final int? maxLength;
  final bool? enabled;

  BorderedTextFormField(
      {required this.hintText,
      this.controller,
      this.validator,
      this.onChange,
      this.keyboardType,
      this.textInputAction,
      this.prefix,
      this.maxLength,
      this.obscureText = false,
      this.enabled = true,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style:
          Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.black),
      enabled: enabled,
      maxLength: maxLength,
      obscureText: obscureText,
      controller: controller,
      validator: validator,
      onChanged: onChange,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      decoration: InputDecoration(
          filled: true,
          prefixIcon: prefix,
          fillColor: Colors.white,
          focusedBorder: fieldBooder,
          enabledBorder: fieldBooder,
          errorBorder: fieldBooder,
          disabledBorder: fieldBooder,
          border: fieldBooder,
          focusedErrorBorder: fieldBooder,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.black.withOpacity(0.60)),
          counterText: ""),
    );
  }

  OutlineInputBorder fieldBooder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(color: Colors.white)
  );
}
