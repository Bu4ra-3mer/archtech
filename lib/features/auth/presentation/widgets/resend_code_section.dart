import 'package:archtech/features/auth/presentation/widgets/check_if_u_have_account_or_no.dart';
import 'package:flutter/material.dart';

class ResendCodeSection extends StatelessWidget {
  final int start;
  final VoidCallback onResend;

  const ResendCodeSection({super.key, required this.start, required this.onResend});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (start > 0)
          Text("يمكنك إعادة الإرسال بعد $start ثانية", style: const TextStyle(color: Colors.grey)),
        Opacity(
          opacity: start == 0 ? 1.0 : 0.5,
          child: CheckIfUHaveAcountOrNo(
            text: 'لم تستلم الكود؟',
            textButton: 'أعد ارساله',
            onTap: start == 0 ? onResend : null,
          ),
        ),
      ],
    );
  }
}