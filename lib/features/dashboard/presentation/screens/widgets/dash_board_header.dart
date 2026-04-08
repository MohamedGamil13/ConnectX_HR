import 'package:connectx_hr/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // User Profile Section
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: AppColors.surfaceContainerHigh,
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.outlineVariant, width: 1),
          ),
          child: const Icon(
            Icons.person_outline,
            color: AppColors.onSurface,
            size: 24,
          ),
        ),
        const SizedBox(width: 12),

        // Greeting Text
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good Morning,",
                style: TextStyle(
                  color: AppColors.outline,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Mohamed",
                style: TextStyle(
                  color: AppColors.onSurface,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),

        // Notification Icon
        Stack(
          children: [
            const Icon(
              Icons.notifications_none_outlined,
              color: AppColors.onSurface,
              size: 28,
            ),
            Positioned(
              right: 4,
              top: 4,
              child: Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 16),

        // Brand Logo Text
        const Text(
          'ConnectX',
          style: TextStyle(
            color: AppColors.onSurface,
            fontSize: 20.0,
            fontWeight: FontWeight.w900,
            letterSpacing: -0.5,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}
