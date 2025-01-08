import 'package:fitness_app/core/constant/app_images.dart';
import 'package:fitness_app/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:fitness_app/features/onboarding/presentation/cubit/onboarding_state.dart';
import 'package:fitness_app/features/onboarding/presentation/widgets/dots_sction.dart';
import 'package:fitness_app/features/onboarding/presentation/widgets/icon_navigate_next.dart';
import 'package:fitness_app/features/onboarding/presentation/widgets/onboarding_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(),
      child: BlocBuilder<OnboardingCubit, OnboardingState>(
        builder: (context, state) {
          final cubit = context.read<OnboardingCubit>();

          return Scaffold(
            backgroundColor: Colors.white,
            body: Stack(
              children: [
                PageView(
                  controller: cubit.pageController,
                  onPageChanged: cubit.onPageChanged,
                  children: const [
                    OnboardingItem(
                      image: AppImages.onboarding1,
                      title: 'Track Your Goal',
                      description:
                          'Don\'t worry if you have trouble determining your goals, We can help you determine your goals and track your goals',
                    ),
                    OnboardingItem(
                      image: AppImages.onboarding2,
                      title: 'Get Burn',
                      description:
                          'Let\'s keep burning, to achieve yours goals, it hurts only temporarily, if you give up now you will be in pain forever',
                    ),
                    OnboardingItem(
                      image: AppImages.onboarding3,
                      title: 'Eat Well',
                      description:
                          'Let\'s start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun',
                    ),
                    OnboardingItem(
                      image: AppImages.onboarding4,
                      title: 'Improve Sleep \nQuality',
                      description:
                          'Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning',
                    ),
                  ],
                ),
                IconNavigateNext(cubit: cubit),
                const DotsSection(),
              ],
            ),
          );
        },
      ),
    );
  }
}
