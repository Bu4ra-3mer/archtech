
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(color: Colors.grey.shade400, thickness: 1),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'أو',
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
        ),
        Expanded(
          child: Divider(color: Colors.grey.shade400, thickness: 1),
        ),
      ],
    );
  }
}