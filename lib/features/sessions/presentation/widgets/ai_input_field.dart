import 'package:connectx_hr/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AiInputField extends StatelessWidget {
  const AiInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLow,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.outlineVariant.withOpacity(0.3)),
      ),
      child: Row(
        children: [
          const Expanded(
            child: Text(
              "Plan a 1-hour workshop for new designers focusing on...",
              style: TextStyle(color: AppColors.onSurfaceVariant, fontSize: 15),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              color: AppColors.primary,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.send_rounded,
              color: AppColors.onPrimary,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
