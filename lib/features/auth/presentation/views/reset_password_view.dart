import 'package:archtech/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:archtech/features/auth/presentation/cubit/auth_state.dart';
import 'package:archtech/features/auth/presentation/widgets/custom_button.dart';
import 'package:archtech/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPasswordView extends StatefulWidget {
  static String id = 'ResetPasswordView';
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(centerTitle: true, title: const Text('كلمة مرور جديدة')),
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/reset_password.png',
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                const SizedBox(height: 30),
                const Text(
                  'يجب أن تكون كلمة المرور الجديدة مختلفة عن الكلمات السابقة المستخدمة',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                const SizedBox(height: 30),
                CustomTextField(
                  controller: _passwordController,
                  hintText: 'ادخل كلمة المرور',
                  labelText: 'كلمة المرور',
                  isPassword: true,
                  validator: (value) => value == null || value.isEmpty
                      ? 'كلمة المرور مطلوبة'
                      : null,
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: _confirmPasswordController,
                  hintText: 'ادخل كلمة المرور',
                  labelText: 'تأكيد المرور',
                  isPassword: true,
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return 'تأكيد كلمة المرور مطلوب';
                    if (value != _passwordController.text)
                      return 'كلمة المرور غير متطابقة';
                    return null;
                  },
                ),
                const SizedBox(height: 30),

                BlocConsumer<AuthCubit, AuthState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      passwordResetSuccess: () {
                        showSuccessDialog(context);
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
                      text: 'تغيير كلمة المرور',
                      isLoading: state.maybeWhen(
                        loading: () => true,
                        orElse: () => false,
                      ),
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          context.read<AuthCubit>().resetPassword(
                            newPassword: _passwordController.text,
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

  void showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/rechange_password.png'),
                const SizedBox(height: 20),
                const Text(
                  'تم تغيير كلمة المرور',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  'تم تغيير كلمة المرور الخاصة بك بنجاح',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 30),
                CustomButton(
                  text: 'العودة لتسجيل الدخول',
                  onPressed: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
