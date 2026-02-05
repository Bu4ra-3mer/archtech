// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState()';
}


}

/// @nodoc
class $AuthStateCopyWith<$Res>  {
$AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Successed value)?  successed,TResult Function( _SignupSuccess value)?  signupSuccess,TResult Function( _ResetCodeSent value)?  resetCodeSent,TResult Function( _PasswordResetSuccess value)?  passwordResetSuccess,TResult Function( _Failured value)?  failured,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Successed() when successed != null:
return successed(_that);case _SignupSuccess() when signupSuccess != null:
return signupSuccess(_that);case _ResetCodeSent() when resetCodeSent != null:
return resetCodeSent(_that);case _PasswordResetSuccess() when passwordResetSuccess != null:
return passwordResetSuccess(_that);case _Failured() when failured != null:
return failured(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Successed value)  successed,required TResult Function( _SignupSuccess value)  signupSuccess,required TResult Function( _ResetCodeSent value)  resetCodeSent,required TResult Function( _PasswordResetSuccess value)  passwordResetSuccess,required TResult Function( _Failured value)  failured,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Successed():
return successed(_that);case _SignupSuccess():
return signupSuccess(_that);case _ResetCodeSent():
return resetCodeSent(_that);case _PasswordResetSuccess():
return passwordResetSuccess(_that);case _Failured():
return failured(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Successed value)?  successed,TResult? Function( _SignupSuccess value)?  signupSuccess,TResult? Function( _ResetCodeSent value)?  resetCodeSent,TResult? Function( _PasswordResetSuccess value)?  passwordResetSuccess,TResult? Function( _Failured value)?  failured,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Successed() when successed != null:
return successed(_that);case _SignupSuccess() when signupSuccess != null:
return signupSuccess(_that);case _ResetCodeSent() when resetCodeSent != null:
return resetCodeSent(_that);case _PasswordResetSuccess() when passwordResetSuccess != null:
return passwordResetSuccess(_that);case _Failured() when failured != null:
return failured(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  successed,TResult Function()?  signupSuccess,TResult Function()?  resetCodeSent,TResult Function()?  passwordResetSuccess,TResult Function( String message)?  failured,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Successed() when successed != null:
return successed();case _SignupSuccess() when signupSuccess != null:
return signupSuccess();case _ResetCodeSent() when resetCodeSent != null:
return resetCodeSent();case _PasswordResetSuccess() when passwordResetSuccess != null:
return passwordResetSuccess();case _Failured() when failured != null:
return failured(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  successed,required TResult Function()  signupSuccess,required TResult Function()  resetCodeSent,required TResult Function()  passwordResetSuccess,required TResult Function( String message)  failured,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Successed():
return successed();case _SignupSuccess():
return signupSuccess();case _ResetCodeSent():
return resetCodeSent();case _PasswordResetSuccess():
return passwordResetSuccess();case _Failured():
return failured(_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  successed,TResult? Function()?  signupSuccess,TResult? Function()?  resetCodeSent,TResult? Function()?  passwordResetSuccess,TResult? Function( String message)?  failured,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Successed() when successed != null:
return successed();case _SignupSuccess() when signupSuccess != null:
return signupSuccess();case _ResetCodeSent() when resetCodeSent != null:
return resetCodeSent();case _PasswordResetSuccess() when passwordResetSuccess != null:
return passwordResetSuccess();case _Failured() when failured != null:
return failured(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AuthState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.initial()';
}


}




/// @nodoc


class _Loading implements AuthState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.loading()';
}


}




/// @nodoc


class _Successed implements AuthState {
  const _Successed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Successed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.successed()';
}


}




/// @nodoc


class _SignupSuccess implements AuthState {
  const _SignupSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignupSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.signupSuccess()';
}


}




/// @nodoc


class _ResetCodeSent implements AuthState {
  const _ResetCodeSent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetCodeSent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.resetCodeSent()';
}


}




/// @nodoc


class _PasswordResetSuccess implements AuthState {
  const _PasswordResetSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PasswordResetSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.passwordResetSuccess()';
}


}




/// @nodoc


class _Failured implements AuthState {
  const _Failured({required this.message});
  

 final  String message;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailuredCopyWith<_Failured> get copyWith => __$FailuredCopyWithImpl<_Failured>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failured&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AuthState.failured(message: $message)';
}


}

/// @nodoc
abstract mixin class _$FailuredCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$FailuredCopyWith(_Failured value, $Res Function(_Failured) _then) = __$FailuredCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$FailuredCopyWithImpl<$Res>
    implements _$FailuredCopyWith<$Res> {
  __$FailuredCopyWithImpl(this._self, this._then);

  final _Failured _self;
  final $Res Function(_Failured) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Failured(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
