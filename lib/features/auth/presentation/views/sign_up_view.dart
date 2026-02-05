import 'package:archtech/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:archtech/features/auth/presentation/cubit/auth_state.dart';
import 'package:archtech/features/auth/presentation/views/sign_in_view.dart';
import 'package:archtech/features/auth/presentation/widgets/check_if_u_have_account_or_no.dart';
import 'package:archtech/features/auth/presentation/widgets/custom_button.dart';
import 'package:archtech/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:archtech/features/auth/presentation/widgets/or_divider.dart';
import 'package:archtech/features/auth/presentation/widgets/social_login_buttons.dart';
import 'package:archtech/features/auth/presentation/widgets/terms_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});
  static String id = 'SignUpView';

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool _agreeToTerms = false;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(' انشاء حساب')),
      body: Form(
        key: _formkey,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CustomTextField(
                    controller: _emailController,
                    hintText: 'ادخل البريد الالكتروني',
                    labelText: 'البريد الالكتروني',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'يرجى إدخال البريد الإلكتروني';
                      }
                      if (!value.contains('@')) {
                        return 'البريد الإلكتروني غير صالح';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15),
                  CustomTextField(
                    controller: _passwordController,
                    isPassword: true,
                    hintText: 'ادخل كلمة المرور',
                    labelText: 'كلمة المرور',
                    validator: (value) {
                      if (value == null || value.length < 6) {
                        return 'كلمة المرور يجب أن لا تقل عن 6 أحرف';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15),
                  CustomTextField(
                    controller: _confirmPasswordController,
                    isPassword: true,
                    hintText: 'ادخل تأكيد كلمة المرور',
                    labelText: 'تأكيد كلمة المرور',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'تأكيد كلمة المرور مطلوب';
                      }
                      if (value != _passwordController.text) {
                        return 'كلمة المرور غير متطابقة';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15),
                  TermsCheckBox(
                    text: 'أوافق على الشروط والأحكام',
                    onChanged: (value) {
                      setState(() {
                        _agreeToTerms = value ?? false;
                      });
                    },
                    value: _agreeToTerms,
                  ),
                  SizedBox(height: 35),
                  BlocConsumer<AuthCubit, AuthState>(
                    listener: (context, state) {
                      state.maybeWhen(
                        signupSuccess: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('تم إنشاء الحساب بنجاح'),
                              backgroundColor: Colors.green,
                            ),
                          );
                          Navigator.pushReplacementNamed(
                            context,
                            SignInView.id,
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
                        text: 'انشاء حساب',
                        isLoading: state.maybeWhen(
                          loading: () => true,
                          orElse: () => false,
                        ),
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            if (!_agreeToTerms) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('يجب الموافقة على الشروط'),
                                ),
                              );
                              return;
                            }
                            context.read<AuthCubit>().signUp(
                              email: _emailController.text,
                              password: _passwordController.text,
                            );
                          }
                        },
                      );
                    },
                  ),

                  SizedBox(height: 30),
                  OrDivider(),
                  const SizedBox(height: 20),
                  SocialLoginButtons(
                    images: [
                      'assets/images/signin/google.png',
                      'assets/images/signin/facebook.png',
                      'assets/images/signin/apple.png',
                    ],
                  ),
                  const SizedBox(height: 10),
                  CheckIfUHaveAcountOrNo(
                    onTap: () {
                      Navigator.pushNamed(context, SignInView.id);
                    },
                    text: 'لديك حساب؟',
                    textButton: 'تسجيل دخول',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
