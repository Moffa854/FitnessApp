import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fitness_app/features/onboarding/presentation/cubit/onboarding_state.dart';
import 'package:flutter/material.dart';


class OnboardingCubit extends Cubit<OnboardingState> {
  final PageController pageController;

  OnboardingCubit()
      : pageController = PageController(),
        super(const OnboardingState());

  void onPageChanged(int page) {
    emit(state.copyWith(currentPage: page));
  }

  void nextPage() {
    if (state.currentPage < 3) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
