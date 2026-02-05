import 'package:freezed_annotation/freezed_annotation.dart';
part 'on_boarding_state.freezed.dart';

@freezed
class OnBoardingState with _$OnBoardingState {
  const factory OnBoardingState.initial({@Default(0) int currentIndex}) =
      _Initial;

  const factory OnBoardingState.pageChanged({required int index}) =
      _PageChanged;
  const factory OnBoardingState.navigateToAuth() = _NavigateToAuth;
}
