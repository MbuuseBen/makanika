import 'package:book/components/text_field_container.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String hintText;
  final IconData icon;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
    required this.hintText,
    this.icon = Icons.lock,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
          obscureText: true,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hintText,
            icon: Icon(icon,color: kPrimaryColor),
            suffixIcon: Icon(Icons.visibility,color: kPrimaryColor),
            border: InputBorder.none,
          ),
        ));
  }
}

