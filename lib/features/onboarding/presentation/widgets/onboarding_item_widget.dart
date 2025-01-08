import 'package:flutter/material.dart';

class OnboardingItem extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const OnboardingItem({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          image,
          fit: BoxFit.fitWidth,
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height * 0.5,
        ),
        const SizedBox(height: 64),
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Text(
            textAlign: TextAlign.left,
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            description,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black54,
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}
