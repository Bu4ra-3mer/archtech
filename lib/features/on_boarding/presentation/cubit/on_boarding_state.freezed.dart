// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'on_boarding_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnBoardingState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnBoardingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnBoardingState()';
}


}

/// @nodoc
class $OnBoardingStateCopyWith<$Res>  {
$OnBoardingStateCopyWith(OnBoardingState _, $Res Function(OnBoardingState) __);
}


/// Adds pattern-matching-related methods to [OnBoardingState].
extension OnBoardingStatePatterns on OnBoardingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _PageChanged value)?  pageChanged,TResult Function( _NavigateToAuth value)?  navigateToAuth,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _PageChanged() when pageChanged != null:
return pageChanged(_that);case _NavigateToAuth() when navigateToAuth != null:
return navigateToAuth(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _PageChanged value)  pageChanged,required TResult Function( _NavigateToAuth value)  navigateToAuth,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _PageChanged():
return pageChanged(_that);case _NavigateToAuth():
return navigateToAuth(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _PageChanged value)?  pageChanged,TResult? Function( _NavigateToAuth value)?  navigateToAuth,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _PageChanged() when pageChanged != null:
return pageChanged(_that);case _NavigateToAuth() when navigateToAuth != null:
return navigateToAuth(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int currentIndex)?  initial,TResult Function( int index)?  pageChanged,TResult Function()?  navigateToAuth,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.currentIndex);case _PageChanged() when pageChanged != null:
return pageChanged(_that.index);case _NavigateToAuth() when navigateToAuth != null:
return navigateToAuth();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int currentIndex)  initial,required TResult Function( int index)  pageChanged,required TResult Function()  navigateToAuth,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.currentIndex);case _PageChanged():
return pageChanged(_that.index);case _NavigateToAuth():
return navigateToAuth();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int currentIndex)?  initial,TResult? Function( int index)?  pageChanged,TResult? Function()?  navigateToAuth,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.currentIndex);case _PageChanged() when pageChanged != null:
return pageChanged(_that.index);case _NavigateToAuth() when navigateToAuth != null:
return navigateToAuth();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements OnBoardingState {
  const _Initial({this.currentIndex = 0});
  

@JsonKey() final  int currentIndex;

/// Create a copy of OnBoardingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex));
}


@override
int get hashCode => Object.hash(runtimeType,currentIndex);

@override
String toString() {
  return 'OnBoardingState.initial(currentIndex: $currentIndex)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $OnBoardingStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@useResult
$Res call({
 int currentIndex
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of OnBoardingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currentIndex = null,}) {
  return _then(_Initial(
currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _PageChanged implements OnBoardingState {
  const _PageChanged({required this.index});
  

 final  int index;

/// Create a copy of OnBoardingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PageChangedCopyWith<_PageChanged> get copyWith => __$PageChangedCopyWithImpl<_PageChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PageChanged&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'OnBoardingState.pageChanged(index: $index)';
}


}

/// @nodoc
abstract mixin class _$PageChangedCopyWith<$Res> implements $OnBoardingStateCopyWith<$Res> {
  factory _$PageChangedCopyWith(_PageChanged value, $Res Function(_PageChanged) _then) = __$PageChangedCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class __$PageChangedCopyWithImpl<$Res>
    implements _$PageChangedCopyWith<$Res> {
  __$PageChangedCopyWithImpl(this._self, this._then);

  final _PageChanged _self;
  final $Res Function(_PageChanged) _then;

/// Create a copy of OnBoardingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(_PageChanged(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _NavigateToAuth implements OnBoardingState {
  const _NavigateToAuth();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NavigateToAuth);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnBoardingState.navigateToAuth()';
}


}




// dart format on
