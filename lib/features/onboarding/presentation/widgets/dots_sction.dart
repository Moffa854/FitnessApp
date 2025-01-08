import 'package:fitness_app/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DotsSection extends StatelessWidget {
  const DotsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 44,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < 4; i++)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.read<OnboardingCubit>().state.currentPage == i
                    ? const Color(0xFF92A3FD)
                    : Colors.grey.shade300,
              ),
            ),
        ],
      ),
    );
  }
}