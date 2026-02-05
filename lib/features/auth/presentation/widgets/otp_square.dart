import 'package:archtech/core/constatnts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpSquare extends StatelessWidget {
  final TextEditingController controller;
  final bool first;
  final bool last;
  final bool hasError;
  final FocusNode focusNode; // نمرره من الخارج
  final Function(String) onChanged; // نمرر أكشن التغيير

  const OtpSquare({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.onChanged,
    this.first = false,
    this.last = false,
    this.hasError = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 65,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        autofocus: first,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        keyboardType: TextInputType.number,
        // الحل لمشكلة نزول الكيبورد: نحدد الـ Action
        textInputAction: last ? TextInputAction.done : TextInputAction.next,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        onChanged: onChanged,
        decoration: InputDecoration(
          counterText: "",
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: hasError ? Colors.red : Colors.black12,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: hasError ? Colors.red : AppColors.primary,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}