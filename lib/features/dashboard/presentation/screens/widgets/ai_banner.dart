import 'package:connectx_hr/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AIBanner extends StatelessWidget {
  const AIBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: const LinearGradient(
          colors: [AppColors.primaryFixed, AppColors.tertiary],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.auto_awesome, color: Colors.white),
          ),
          const SizedBox(width: 16),
          const Expanded(
            child: Text(
              "Ask AI to create session...",
              style: TextStyle(
                color: AppColors.onPrimaryContainer,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: AppColors.onPrimaryContainer,
          ),
        ],
      ),
    );
  }
}
