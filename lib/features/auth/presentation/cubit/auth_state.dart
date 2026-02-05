import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
 const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.successed() = _Successed; 
  const factory AuthState.signupSuccess() = _SignupSuccess; 
  const factory AuthState.resetCodeSent() = _ResetCodeSent; 
  const factory AuthState.passwordResetSuccess() = _PasswordResetSuccess; 
  const factory AuthState.failured({required String message}) = _Failured;
}
