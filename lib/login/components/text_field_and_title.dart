import 'package:flutter/material.dart';

class TextFieldAndTitle extends StatelessWidget {
  const TextFieldAndTitle({
    super.key,
    required this.title,
    required this.hintText,
    this.isShowPassword,
    this.SuffixIcon,
    required this.validator,
    this.helperText,
  });

  final String title;
  final String hintText;
  final bool? isShowPassword;
  final Widget? SuffixIcon;
  final String? Function(String? value) validator;
  final String? helperText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 27),
        ),
        TextFormField(
          validator: validator,
          obscureText: isShowPassword ?? false,
          decoration: InputDecoration(
            helperText: helperText,
            helperStyle: TextStyle(fontSize: 15),
            helperMaxLines: 2,
            errorMaxLines: 2,
            suffixIcon: SuffixIcon,
            hintText: hintText,
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green.shade900,
              ),
            ),
            errorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
