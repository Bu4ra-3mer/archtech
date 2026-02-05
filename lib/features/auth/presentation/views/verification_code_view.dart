import 'dart:async';
import 'package:archtech/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:archtech/features/auth/presentation/cubit/auth_state.dart';
import 'package:archtech/features/auth/presentation/views/reset_password_view.dart';
import 'package:archtech/features/auth/presentation/widgets/custom_button.dart';
import 'package:archtech/features/auth/presentation/widgets/otp_square.dart';
import 'package:archtech/features/auth/presentation/widgets/otp_timer.dart';
import 'package:archtech/features/auth/presentation/widgets/resend_code_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerificationCodeView extends StatefulWidget {
  const VerificationCodeView({super.key});
  static String id = 'VerificationCodeView';

  @override
  State<VerificationCodeView> createState() => _VerificationCodeViewState();
}

class _VerificationCodeViewState extends State<VerificationCodeView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _digit1 = TextEditingController();
  final TextEditingController _digit2 = TextEditingController();
  final TextEditingController _digit3 = TextEditingController();
  final TextEditingController _digit4 = TextEditingController();
  int _start = 60;
  Timer? _timer;
  String? errorMessage;
  bool isError = false;
  final FocusNode _f1 = FocusNode();
  final FocusNode _f2 = FocusNode();
  final FocusNode _f3 = FocusNode();
  final FocusNode _f4 = FocusNode();

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _digit1.dispose();
    _digit2.dispose();
    _digit3.dispose();
    _digit4.dispose();
    _f1.dispose();
    _f2.dispose();
    _f3.dispose();
    _f4.dispose();
    super.dispose();
  }

  String get formattedTime {
    int minutes = _start ~/ 60;
    int seconds = _start % 60;

    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(' التحقق من الكود ')),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {
                state.maybeWhen(
                  successed: () {
                    Navigator.pushReplacementNamed(
                      context,
                      ResetPasswordView.id,
                    );
                  },
                  failured: (message) {
                    setState(() {
                      errorMessage = message;
                      isError = true;
                    });
                  },
                  orElse: () {},
                );
              },
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),

                    OtpTimer(timeText: formattedTime),

                    const SizedBox(height: 30),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OtpSquare(
                          controller: _digit1,
                          focusNode: _f1,
                          first: true,
                          hasError: isError,
                          onChanged: (value) {
                            if (value.isNotEmpty) _f2.requestFocus();
                          },
                        ),
                        OtpSquare(
                          controller: _digit2,
                          focusNode: _f2,
                          hasError: isError,
                          onChanged: (value) {
                            if (value.isNotEmpty)
                              _f3.requestFocus();
                            else
                              _f1.requestFocus();
                          },
                        ),
                        OtpSquare(
                          controller: _digit3,
                          focusNode: _f3,
                          hasError: isError,
                          onChanged: (value) {
                            if (value.isNotEmpty)
                              _f4.requestFocus();
                            else
                              _f2.requestFocus();
                          },
                        ),
                        OtpSquare(
                          controller: _digit4,
                          focusNode: _f4,
                          last: true,
                          hasError: isError,
                          onChanged: (value) {
                            if (value.isEmpty) _f3.requestFocus();
                          },
                        ),
                      ],
                    ),

                    const SizedBox(height: 40),

                    ResendCodeSection(
                      start: _start,
                      onResend: () {
                        setState(() {
                          errorMessage = null;
                          isError = false;

                          _digit1.clear();
                          _digit2.clear();
                          _digit3.clear();
                          _digit4.clear();
                        });

                        startTimer();

                        print("تم إعادة إرسال الكود بنجاح");
                      },
                    ),
                    const SizedBox(height: 10),

                    if (errorMessage != null)
                      Text(
                        errorMessage!,
                        style: const TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                    const SizedBox(height: 30),

                   CustomButton(
  text: errorMessage == null ? "إرسال" : "إعادة المحاولة",
  isLoading: state.maybeWhen(
    loading: () => true,
    orElse: () => false,
  ),
  onPressed: () {
    final code = _digit1.text + _digit2.text + _digit3.text + _digit4.text;

    if (code.length < 4) {
      setState(() {
        errorMessage = 'يرجى إدخال الكود كاملًا';
        isError = true;
      });
    } else {
      context.read<AuthCubit>().verifyCode(code: code);
    }
  },
),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void startTimer() {
    _start = 60;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_start == 0) {
        setState(() {
          timer.cancel();
        });
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

}
