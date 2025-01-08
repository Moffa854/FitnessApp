import 'package:fitness_app/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:flutter/material.dart';

class IconNavigateNext extends StatelessWidget {
  const IconNavigateNext({
    super.key,
    required this.cubit,
  });

  final OnboardingCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 24,
      right: 24,
      child: Container(
        width: 60,
        height: 60,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF92A3FD),
              Color(0xFF9DCEFF),
            ],
          ),
        ),
        child: IconButton(
          onPressed: cubit.nextPage,
          icon: const Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }
}