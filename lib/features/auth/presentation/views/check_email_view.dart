import 'package:archtech/features/auth/presentation/views/verification_code_view.dart';
import 'package:archtech/features/auth/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CheckEmailView extends StatelessWidget {
  static String id = 'CheckEmailView';
  const CheckEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(' التحقق من البريد')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/verify_email.png',
                height: MediaQuery.of(context).size.height * 0.3,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 30),
              const Text(
                'تم إرسال كود استعادة كلمة المرور إلى بريدك الإلكتروني',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              const SizedBox(height: 80),
              CustomButton(
                text: 'تحقق من بريدك الالكتروني',
                onPressed: () async {
                  final Uri emailAppUri = Uri.parse("mailto:");

                  try {
                    if (await canLaunchUrl(emailAppUri)) {
                      await launchUrl(emailAppUri);
                    }
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'يرجى فتح تطبيق البريد يدوياً لرؤية الكود',
                        ),
                      ),
                    );
                  }

                  if (context.mounted) {
                    Navigator.pushReplacementNamed(context, VerificationCodeView.id);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
