import 'package:archtech/features/auth/presentation/cubit/auth_state.dart';
import 'package:bloc/bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState.initial());

  Future<void> siginIn(String email, String password) async {
    emit(const AuthState.loading());

    await Future.delayed(const Duration(seconds: 2));
    if (email == "test@test.com" && password == "123456") {
      emit(const AuthState.successed());
    } else {
      emit(
        const AuthState.failured(
          message: "البريد الإلكتروني أو كلمة المرور غير صحيحة",
        ),
      );
    }
  }

 Future<void> signUp({required String email, required String password}) async {
    emit(const AuthState.loading());
    await Future.delayed(const Duration(seconds: 2));
    emit(const AuthState.signupSuccess()); 
  }

Future<void> sendResetCode({required String email}) async {
    emit(const AuthState.loading());
    await Future.delayed(const Duration(seconds: 2));
    emit(const AuthState.resetCodeSent()); 
  }

  Future<void> verifyCode({required String code}) async {
    emit(const AuthState.loading());
    await Future.delayed(const Duration(seconds: 1));

    if (code == "1234") {
      emit(const AuthState.successed());
    } else {
      emit(const AuthState.failured(message: "الكود الذي أدخلته غير صحيح"));
    }
  }

Future<void> resetPassword({required String newPassword}) async {
    emit(const AuthState.loading());
    await Future.delayed(const Duration(seconds: 2));
    emit(const AuthState.passwordResetSuccess()); 
  }
}
