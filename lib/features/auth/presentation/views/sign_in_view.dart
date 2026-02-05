import 'package:archtech/core/constatnts.dart';
import 'package:archtech/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:archtech/features/auth/presentation/cubit/auth_state.dart';
import 'package:archtech/features/auth/presentation/views/forgot_password_view.dart';
import 'package:archtech/features/auth/presentation/views/sign_up_view.dart';
import 'package:archtech/features/auth/presentation/widgets/check_if_u_have_account_or_no.dart';
import 'package:archtech/features/auth/presentation/widgets/custom_button.dart';
import 'package:archtech/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:archtech/features/auth/presentation/widgets/or_divider.dart';
import 'package:archtech/features/auth/presentation/widgets/social_login_buttons.dart';
import 'package:archtech/features/auth/presentation/widgets/terms_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInView extends StatefulWidget {
  static String id = 'SignInView';
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _agreeToTerms = false;
  @override
void dispose() {
  _emailController.dispose();
  _passwordController.dispose();
  super.dispose();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('  تسجيل دخول')),
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CustomTextField(
                  hintText: 'ادخل البريد الالكتروني',
                  labelText: 'البريد الالكتروني',
                  controller: _emailController,

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
                SizedBox(height: 15),
                CustomTextField(
                  isPassword: true,
                  controller: _passwordController,
                  hintText: 'ادخل كلمة المرور',
                  labelText: 'كلمة المرور',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'كلمة المرور مطلوبة';
                    }
                    if (value.length < 6) {
                      return 'كلمة المرور يجب ألا تقل عن 6 أحرف';
                    }
                    return null;
                  },
                ),

                SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: TermsCheckBox(
                        text: 'تذكرني',
                        onChanged: (value) {
                          setState(() {
                            _agreeToTerms = value ?? false;
                          });
                        },
                        value: _agreeToTerms,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, ForgotPasswordView.id);
                      },
                      child: Text(
                        'هل نسيت كلمة المرور؟',
                        style: TextStyle(color: AppColors.primary),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 35),
                BlocConsumer<AuthCubit, AuthState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      successed: () {
                        Navigator.pushReplacementNamed(context, 'HomeView');
                      },
                      orElse: () {},
                      failured: (message) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(message),
                            backgroundColor: Colors.red,
                          ),
                        );
                      },
                    );
                  },
                  builder: (context, state) {
                    return CustomButton(
                      text: 'تسجيل دخول',
                      isLoading: state.maybeWhen(
                        loading: () => true,
                        orElse: () => false,
                      ),

                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          context.read<AuthCubit>().siginIn(
                            _emailController.text,
                            _passwordController.text,
                          );
                        }
                      },
                    );
                  },
                ),

                SizedBox(height: 30),
                OrDivider(),
                SizedBox(height: 10),
                SocialLoginButtons(
                  images: [
                    'assets/images/signin/google.png',
                    'assets/images/signin/facebook.png',
                  ],
                ),
                SizedBox(height: 120),
                CheckIfUHaveAcountOrNo(
                  onTap: () {
                    Navigator.pushNamed(context, SignUpView.id);
                  },
                  text: 'ليس لديك حساب؟',
                  textButton: 'إنشاء حساب جديد',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
