import 'package:archtech/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:archtech/features/auth/presentation/cubit/auth_state.dart';
import 'package:archtech/features/auth/presentation/views/check_email_view.dart';
import 'package:archtech/features/auth/presentation/widgets/custom_button.dart';
import 'package:archtech/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordView extends StatefulWidget {
  static String id = 'ForgotPasswordView';
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('هل نسيت كلمة المرور ')),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/forgot_password/Rectangle42066.png',
                  height: MediaQuery.of(context).size.height * 0.3,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 30),
                CustomTextField(
                  controller: _emailController,
                  hintText: 'ادخل البريد الالكتروني',
                  labelText: 'البريد الالكتروني',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'البريد الإلكتروني مطلوب';
                    }
                    if (!value.contains('@')) {
                      return 'أدخل بريد إلكتروني صالح';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 50),
                BlocConsumer<AuthCubit, AuthState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      resetCodeSent: () {
                        Navigator.pushNamed(context, CheckEmailView.id);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('تم ارسال الكود لايميلك')),
                        );
                      },
                      failured: (message) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(message),
                            backgroundColor: Colors.red,
                          ),
                        );
                      },
                      orElse: () {},
                    );
                  },
                  builder: (context, state) {
                    return CustomButton(
                      text: 'ارسال الكود',
                      isLoading: state.maybeWhen(
                        loading: () => true,
                        orElse: () => false,
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<AuthCubit>().sendResetCode(
                            email: _emailController.text,
                          );
                        }
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
