import 'package:archtech/features/on_boarding/presentation/cubit/on_boarding_state.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bloc/bloc.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(const OnBoardingState.initial());
  void changePage(int index) {
    emit(OnBoardingState.pageChanged(index: index));
  }

Future<void> CompleteOnBoarding() async {
  emit(const OnBoardingState.navigateToAuth());

  final prefs = await SharedPreferences.getInstance(); 
  await prefs.setBool('onboarding_seen', true);
}
}
