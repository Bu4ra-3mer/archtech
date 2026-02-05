import 'package:flutter/material.dart';

class TermsCheckBox extends StatelessWidget {
  final String text;
  final bool value;
  final ValueChanged<bool?> onChanged;

  TermsCheckBox({super.key, required this.onChanged, required this.value,required this.text});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title:  Text(
        text,
        style: TextStyle(fontSize: 14),
        textAlign: TextAlign.right,
      ),
      value: value,
      onChanged: onChanged,
      controlAffinity: ListTileControlAffinity.leading,
      contentPadding: EdgeInsets.zero,
      dense: true,
    );
  }
}
